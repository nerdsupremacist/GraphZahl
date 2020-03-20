
import Foundation
import Runtime
import GraphQL
import NIO

extension PropertyInfo {

    func resolve(for receiverType: GraphQLObject.Type, using context: inout Resolution.Context) throws -> GraphQLField? {
        guard let type = type as? OutputResolvable.Type else { return nil }

        let arguments = try type.additionalGraphqlArguments(using: &context)

        return GraphQLField(type: try context.resolve(type: type),
                            args: arguments) { source, arguments, _, eventLoop, _ in

            let object = receiverType.object(from: source)
            let result = try self.get(from: object)
            if let result = result as? OutputResolvable {
                let arguments = try arguments.dictionaryValue()
                return try result.resolve(source: object, arguments: arguments, eventLoop: eventLoop)
            }
            return eventLoop.next().makeSucceededFuture(result)
        }
    }

}
