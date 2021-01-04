
import Foundation
import Runtime
import GraphQL
import NIO
import ContextKit

extension PropertyInfo {

    func resolve(for receiverType: GraphQLObject.Type, using context: inout Resolution.Context) throws -> PropertyResult? {
        do {
            if let type = type as? CustomGraphQLProperty.Type {
                return try type.resolve(with: self, for: receiverType, using: &context)
            }

            guard let type = type as? OutputResolvable.Type else { return nil }

            let arguments = try type.additionalGraphqlArguments(using: &context)

            let field = GraphQLField(type: try context.reference(for: type),
                                args: arguments) { source, arguments, context, eventLoop, _ in

                let object = receiverType.object(from: source)

                let result = try self.get(from: object)
                if let result = result as? OutputResolvable {
                    let arguments = try arguments.dictionaryValue()
                    return try result.resolve(source: object, arguments: arguments, context: context as! MutableContext, eventLoop: eventLoop).convert(eventLoopGroup: eventLoop)
                }

                return eventLoop.next().makeSucceededFuture(result)
            }

            return .field(name.deleting(prefix: "_"), field)
        } catch Resolution.Error.viewerContextDidNotMatchExpectedType {
            return nil
        } catch {
            throw error
        }
    }

}
