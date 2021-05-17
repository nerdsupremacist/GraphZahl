
import Foundation
import GraphQL

/**
 # Conditional Conformance

 All optionals of values that can be translated to a GraphQL Value, can themselves be translated to a GraphQL Value
 */
extension Optional: ValueResolvable where Wrapped: ValueResolvable {

    public func map() throws -> Map {
        return try map { try $0.map() } ?? .null
    }

}

/**
 # Conditional Conformance

 All optionals of values that are GraphQL Inputs, can be Inputs themselves
 */
extension Optional: InputResolvable where Wrapped: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        switch try context.resolve(type: Wrapped.self) {
        case let resolved as GraphQLNonNull:
            guard let type = resolved.ofType as? GraphQLInputType else { fatalError() }
            return type
        case let type:
            return type
        }
    }

    public static func create(from map: Map) throws -> Optional<Wrapped> {
        switch map {
        case .null:
            return .none
        default:
            return try Wrapped.create(from: map)
        }
    }
}

