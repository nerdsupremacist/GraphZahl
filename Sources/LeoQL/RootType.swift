
import Foundation


public protocol RootType : Object {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}

public final class EmptyRootType<ViewerContext> : RootType {
    required public init(viewerContext: ViewerContext) {
        // No-op
    }
}

public protocol MandatoryRootType : RootType { }

public typealias QueryType = MandatoryRootType
public typealias MutationType = RootType
