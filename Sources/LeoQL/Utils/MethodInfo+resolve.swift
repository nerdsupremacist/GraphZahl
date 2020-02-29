
import Foundation
import Runtime
import GraphQL
import NIO

extension MethodInfo {

    func resolve(using context: inout Resolution.Context) throws -> GraphQLField? {
        guard let returnType = returnType as? OutputResolvable.Type else { return nil }

        let mappedArguments = arguments.compactMap { argument in argument.name.map { ($0, argument) } }
        let arguments = try Dictionary(uniqueKeysWithValues: mappedArguments)
            .compactMapValues { argument -> GraphQLArgument? in
                guard let argumentType = argument.type as? InputResolvable.Type else { return nil }
                return GraphQLArgument(type: try context.resolve(type: argumentType))
            }

        guard arguments.count == arguments.count else { return nil }

        let completeArguments = try returnType
            .additionalGraphqlArguments(using: &context)
            .merging(arguments) { $1 }

        return GraphQLField(type: try context.resolve(type: returnType),
                            args: completeArguments) { (receiver, args, _, eventLoop, _) -> Future<Any?> in

            let args = try args.dictionaryValue()
            return try self.call(receiver: receiver, argumentMap: args, eventLoop: eventLoop)
        }
    }

}

extension MethodInfo {

    fileprivate func call(receiver: Any,
                          argumentMap: [String : Map],
                          eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let arguments = try self.arguments.map { argument -> Any? in
            guard let name = argument.name,
                let argumentType = argument.type as? InputResolvable.Type else { return nil }

            return try argumentMap[name].map { try argumentType.init(map: $0) }
        }
        let result = try self.call(receiver: receiver, arguments: arguments as [Any])
        
        // TODO: for some reason this breaks with arrays...
        // this will break the server if we ever return [Future<T>]
        if let result = result as? OutputResolvable {
            return try result.resolve(source: receiver, arguments: argumentMap, eventLoop: eventLoop)
        }
        return eventLoop.next().makeSucceededFuture(result)
    }

}
