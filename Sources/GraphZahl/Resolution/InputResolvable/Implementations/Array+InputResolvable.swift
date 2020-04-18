
import Foundation
import GraphQL

/**
 # Conditional Conformance

 All arrays of values that can be translated to a GraphQL Value, can themselves be translated to a GraphQL Value
 */
extension Array: ValueResolvable where Element: ValueResolvable {

    public func map() throws -> Map {
        return .array(try map { try $0.map() })
    }

}

/**
 # Conditional Conformance

 All arrays of values that are GraphQL Inputs, can be Inputs themselves
*/
extension Array: InputResolvable where Element: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLList(try context.resolve(type: Element.self)))
    }

    public static func create(from map: Map) throws -> Array<Element> {
        return try map.arrayValue().map { try Element.create(from: $0) }
    }

}
