
import Foundation

public protocol GraphQLRootType : GraphQLObject {
    associatedtype ViewerContext
    init(viewerContext: ViewerContext)
}

extension GraphQLRootType {

    public static func object(from source: Any) -> AnyObject {
        if let viewerContext = source as? ViewerContext {
            return Self(viewerContext: viewerContext)
        }
        return source as AnyObject
    }

}
