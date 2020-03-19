
import Foundation

extension RawRepresentable where RawValue: GraphQLScalar, Self: GraphQLScalar {

    public init(scalar: ScalarValue) throws {
        let rawValue = try RawValue(scalar: scalar)
        guard let value = Self(rawValue: rawValue) else {
            throw ScalarTypeError.valueFailedInnerTypeConstraints(scalar, forType: Self.self)
        }

        self = value
    }

    public func encodeScalar() throws -> ScalarValue {
        return try rawValue.encodeScalar()
    }

}
