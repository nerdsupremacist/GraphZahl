
import Foundation
import Runtime
import GraphQL
import NIO
import ContextKit

extension PropertyInfo {

    func resolve(for receiverType: GraphQLObject.Type, using context: inout Resolution.Context) throws -> GraphQLField? {
        do {
            guard let type = type as? OutputResolvable.Type else { return nil }

            let arguments = try type.additionalGraphqlArguments(using: &context)

            return GraphQLField(type: try context.reference(for: type),
                                args: arguments) { source, arguments, context, eventLoop, _ in

                print("Accessing property \(self.name) of \(receiverType)")
                print("Source=\(source)")
                fflush(stdout)
                let object = receiverType.object(from: source)
                print("Object=\(object)")
                fflush(stdout)

                let result = try self.get(from: object)
                print("Result=\(result)")
                fflush(stdout)
                if let result = result as? OutputResolvable {
                    let arguments = try arguments.dictionaryValue()
                    return try result.resolve(source: object, arguments: arguments, context: context as! MutableContext, eventLoop: eventLoop).convert(eventLoopGroup: eventLoop)
                }

                print("Result is not Output Resolvable!")
                fflush(stdout)
                return eventLoop.next().makeSucceededFuture(result)
            }
        } catch Resolution.Error.viewerContextDidNotMatchExpectedType {
            return nil
        } catch {
            throw error
        }
    }

}
