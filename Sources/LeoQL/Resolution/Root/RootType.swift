
import Foundation

public protocol RootType : Object {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}
