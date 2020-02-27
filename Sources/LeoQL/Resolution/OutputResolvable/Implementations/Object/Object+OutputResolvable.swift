
import Foundation
import GraphQL
import NIO

extension Object {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(try resolveObject(using: &context))
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {

        return eventLoop.next().makeSucceededFuture(self)
    }

}
