
import Foundation


public protocol RootType : Object {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}

public struct EmptyRootType<ViewerContext> : RootType {
    public init(viewerContext: ViewerContext) {
        // No-op
    }
}

public protocol MandatoryRootType : RootType { }

public typealias QueryType = MandatoryRootType
public typealias MutationType = RootType
