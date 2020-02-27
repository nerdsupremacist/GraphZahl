
import Foundation

public protocol Scalar: OutputResolvable, InputResolvable, ConcreteResolvable {
    static var typeName: String { get }
    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}

extension Scalar {

    public static var typeName: String {
        return String(describing: Self.self)
    }

}
