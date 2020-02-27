
import Foundation
import GraphQL

extension Float: Scalar {

    public init(scalar: ScalarValue) throws {
        self = Float(try scalar.float())
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve() throws -> GraphQLScalarType {
        return GraphQLFloat
    }

}
