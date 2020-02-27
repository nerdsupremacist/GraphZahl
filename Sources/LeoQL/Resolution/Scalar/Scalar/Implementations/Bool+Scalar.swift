
import Foundation
import GraphQL

extension Bool: Scalar {

    public static let concreteTypeName = "Boolean"

    public init(scalar: ScalarValue) throws {
        self = try scalar.bool()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .bool(self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLBoolean)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLBoolean)
    }

}
