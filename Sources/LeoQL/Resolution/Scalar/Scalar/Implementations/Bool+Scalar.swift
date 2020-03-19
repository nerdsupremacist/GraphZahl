
import Foundation
import GraphQL

extension Bool: GraphQLScalar {

    public static let concreteTypeName = "Boolean"

    public init(scalar: ScalarValue) throws {
        self = try scalar.bool()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .bool(self)
    }

    public static func resolve() throws -> GraphQLScalarType {
        return GraphQLBoolean
    }

}
