
import Foundation
import GraphQL

extension Scalar {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return try GraphQLNonNull(resolve())
    }

    public init(map: Map) throws {
        try self.init(scalar: try ScalarValue(map: map))
    }

}
