
import Foundation
import GraphQL

extension Scalar {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        let type = try GraphQLScalarType(name: typeName) { value in
            guard let value = value as? Self else { fatalError() }
            return try value.encodeScalar().graphql()
        }

        return GraphQLNonNull(type)
    }

    public init(map: Map) throws {
        try self.init(scalar: try ScalarValue(map: map))
    }

}
