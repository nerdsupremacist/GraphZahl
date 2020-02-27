
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
        context.append(output: GraphQLInt)
        return GraphQLNonNull(GraphQLInt)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context.append(input: GraphQLInt)
        return GraphQLNonNull(GraphQLInt)
    }

}
