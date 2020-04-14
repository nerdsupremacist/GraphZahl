
import Foundation
import GraphQL

extension GraphQLScalar {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return try GraphQLNonNull(resolve())
    }

    public static func create(from map: Map) throws -> Self {
        return try Self.init(scalar: try ScalarValue(map: map))
    }

}
