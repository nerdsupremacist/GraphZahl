
import Foundation
import GraphQL
import NIO

/**
# EmptyRootType

A Root Type that signals that it's empty and should not be resolved
*/
public final class EmptyRootType<ViewerContext> : GraphQLRootType {
    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(nil)
    }

    required public init(viewerContext: ViewerContext) {
        // No-op
    }
}
