
import Foundation
import GraphQL

extension Array: ValueResolvable where Element: ValueResolvable {

    public func map() throws -> Map? {
        return .array(try compactMap { try $0.map() })
    }

}

extension Array: InputResolvable where Element: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLList(try context.resolve(type: Element.self)))
    }

    public static func create(from map: Map) throws -> Array<Element> {
        return try map.arrayValue().map { try Element.create(from: $0) }
    }

}
