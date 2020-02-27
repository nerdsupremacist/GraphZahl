
import Foundation
import GraphQL
import NIO

public final class EmptyRootType<ViewerContext> : RootType {
    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().newSucceededFuture(result: nil)
    }

    required public init(viewerContext: ViewerContext) {
        // No-op
    }
}
