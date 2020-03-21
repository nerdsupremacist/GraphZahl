
import ContextKit

private var keys = [Int : Context.AnyKey]()

extension Context.Key {

    static var viewerContext: Context.Key<T> {
        let keyForKey = unsafeBitCast(T.self as Any.Type, to: Int.self)
        return keys.getOrPut(keyForKey, default: Context.Key<T>()) as! Context.Key<T>
    }

}
