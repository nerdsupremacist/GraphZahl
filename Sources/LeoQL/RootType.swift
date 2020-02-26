
import Foundation
import GraphQL
import NIO

public protocol RootType : Object {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}

public final class EmptyRootType<ViewerContext> : RootType {
    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().newSucceededFuture(result: nil)
    }

    required public init(viewerContext: ViewerContext) {
        // No-op
    }
}

public protocol MandatoryRootType : RootType { }

public typealias QueryType = MandatoryRootType
public typealias MutationType = RootType
