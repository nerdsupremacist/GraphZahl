
import Foundation
import GraphQL

extension Array: InputResolvable where Element: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLList(try context.resolve(type: Element.self)))
    }

    public init(map: Map) throws {
        self = try map.arrayValue().map { try Element(map: $0) }
    }

}
