
import Foundation
import GraphQL

extension Int: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.int()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLInt)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLInt)
    }

}
