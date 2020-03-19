
import Foundation

public protocol RootType : Object {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}

extension RootType {

    public static func object(from source: Any) -> AnyObject {
        if let viewerContext = source as? ViewerContext {
            return Self(viewerContext: viewerContext)
        }
        return source as AnyObject
    }

}
