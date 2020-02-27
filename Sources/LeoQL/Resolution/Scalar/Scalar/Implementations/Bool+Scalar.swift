
import Foundation
import GraphQL

extension Bool: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.bool()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .bool(self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context.append(output: GraphQLBoolean, as: "Bool")
        return GraphQLNonNull(GraphQLBoolean)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context.append(input: GraphQLBoolean, as: "Bool")
        return GraphQLNonNull(GraphQLBoolean)
    }

}
