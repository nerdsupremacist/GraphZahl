
import Foundation
import Runtime
import GraphQL
import NIO

extension MethodInfo {

    func resolve(for receiverType: GraphQLObject.Type, using context: inout Resolution.Context) throws -> GraphQLField? {
        guard let returnType = returnType as? OutputResolvable.Type else { return nil }

        let mappedArguments = arguments.compactMap { argument in argument.name.map { ($0, argument) } }
        let arguments = try Dictionary(uniqueKeysWithValues: mappedArguments)
            .compactMapValues { argument -> GraphQLArgument? in
                guard let argumentType = argument.type as? InputResolvable.Type else { return nil }

                let type = try context.resolve(type: argumentType)
                if let type = type as? GraphQLNonNull, argument.defaultAddress != nil {
                    return GraphQLArgument(type: type.ofType as! GraphQLInputType)
                }

                return GraphQLArgument(type: type)
            }

        guard arguments.count == arguments.count else { return nil }

        guard arguments.count <= MethodInfo.maximumNumberOfArgumentsWithReflection else {
            // Print a warning in such cases to make sure the developers catch it
            print("Warning: Method \(receiverType).\(methodName) is technically abstractable to GraphQL but it has too many arguments.")
            print("    Currently we don't support more than \(MethodInfo.maximumNumberOfArgumentsWithReflection) arguments when using reflection.")
            print("    This is due to the limitations on reflection in swift. We had to draw a line regarding the number of arguments somewhere.")
            print("    If this is really necessary please contact the mantainers to increase this limit.")

            return nil
        }

        let completeArguments = try returnType
            .additionalGraphqlArguments(using: &context)
            .merging(arguments) { $1 }

        return GraphQLField(type: try context.resolve(type: returnType),
                            args: completeArguments) { (source, args, _, eventLoop, _) -> Future<Any?> in

            let args = try args.dictionaryValue()
            return try self.call(receiver: receiverType.object(from: source), argumentMap: args, eventLoop: eventLoop)
        }
    }

}

extension MethodInfo {

    fileprivate func call(receiver: AnyObject,
                          argumentMap: [String : Map],
                          eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let arguments = try self.arguments.map { argument -> Any in
            guard let name = argument.name,
                let argumentType = argument.type as? InputResolvable.Type else { fatalError() }

            if let value = argumentMap[name] {
                return try argumentType.init(map: value)
            }

            if argument.defaultAddress != nil {
                return try argument.defaultValue()!
            }

            // TODO: Figure out what to do here
            return NSNull()
        } as [Any]
        let result = try self.call(receiver: receiver, arguments: arguments)
        
        // TODO: for some reason this breaks with arrays...
        // this will break the server if we ever return [Future<T>]
        if let result = result as? OutputResolvable {
            return try result.resolve(source: receiver, arguments: argumentMap, eventLoop: eventLoop)
        }
        return eventLoop.next().makeSucceededFuture(result)
    }

}