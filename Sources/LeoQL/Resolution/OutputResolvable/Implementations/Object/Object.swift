
import Foundation

public protocol Object : class, OutputResolvable, ConcreteResolvable {
    static func object(from source: Any) -> AnyObject
}

extension Object {

    public static func object(from source: Any) -> AnyObject {
        return source as AnyObject
    }

}
