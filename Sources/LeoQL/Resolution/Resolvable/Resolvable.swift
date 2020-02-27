
import Foundation

public protocol Resolvable {
    static var typeName: String? { get }
}

extension Resolvable {

    public static var typeName: String? {
        return nil
    }

}
