
import Foundation
import GraphQL

extension Optional: ValueResolvable where Wrapped: ValueResolvable {

    public func map() throws -> Map? {
        guard let self = self else { return .null }
        return try self.map()
    }

}

extension Optional: InputResolvable where Wrapped: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        guard let resolved = try context.resolve(type: Wrapped.self) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLInputType else { fatalError() }
        return type
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

