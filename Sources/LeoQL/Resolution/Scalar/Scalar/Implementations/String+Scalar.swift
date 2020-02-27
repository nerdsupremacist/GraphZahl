
import Foundation
import GraphQL

extension String: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.string()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .string(self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context.append(output: GraphQLString)
        return GraphQLNonNull(GraphQLString)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context.append(input: GraphQLString)
        return GraphQLNonNull(GraphQLString)
    }

}
