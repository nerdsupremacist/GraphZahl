
import Foundation

public protocol ConcreteResolvable: Resolvable {
    static var concreteTypeName: String { get }
}

extension ConcreteResolvable {

    public static var typeName: String? {
        return concreteTypeName
    }

    public static var concreteTypeName: String {
        return String(describing: Self.self)
    }

}
