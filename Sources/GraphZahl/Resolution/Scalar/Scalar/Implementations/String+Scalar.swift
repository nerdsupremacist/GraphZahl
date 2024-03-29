
import Foundation
import GraphQL

extension String: GraphQLScalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.string()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .string(self)
    }

    public static func resolve() throws -> GraphQLScalarType {
        return GraphQLString
    }

}
