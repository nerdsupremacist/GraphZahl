
import ContextKit

private var keys = [Int : Context.AnyKey]()

extension Context.Key {

    public static var viewerContext: Context.Key<T> {
        let keyForKey = unsafeBitCast(T.self as Any.Type, to: Int.self)
        return keys.getOrPut(keyForKey, default: Context.Key<T>()) as! Context.Key<T>
    }

}

extension Context.Key where T == Any {
    public static let anyViewerContext = Context.Key<Any>()
}

extension ContextKeyPaths {

    public var anyViewerContext: Context.Key<Any> {
        return .anyViewerContext
    }

}
