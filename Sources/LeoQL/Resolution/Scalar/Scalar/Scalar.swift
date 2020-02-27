
import Foundation

public protocol Scalar: OutputResolvable, InputResolvable {
    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}
