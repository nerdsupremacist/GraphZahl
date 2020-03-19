
import Foundation
import GraphQL

extension Int: GraphQLScalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.int()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve() throws -> GraphQLScalarType {
        return GraphQLInt
    }
    
}
