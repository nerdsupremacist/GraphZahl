
import Foundation

public protocol GraphQLObject : class, OutputResolvable, ConcreteResolvable {
    static func object(from source: Any) -> AnyObject
}

extension GraphQLObject {

    public static func object(from source: Any) -> AnyObject {
        return source as AnyObject
    }

}
