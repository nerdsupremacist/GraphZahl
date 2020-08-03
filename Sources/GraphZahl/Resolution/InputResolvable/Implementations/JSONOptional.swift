
import Foundation
import GraphQL

public enum JSONOptional<Wrapped> {
    case missingKey
    case null
    case some(Wrapped)
}

extension JSONOptional {

    public func map<T>(_ transform: (Wrapped) throws -> T) rethrows -> JSONOptional<T> {
        switch self {
        case .missingKey:
            return .missingKey
        case .null:
            return .null
        case .some(let wrapped):
            return .some(try transform(wrapped))
        }
    }

    public func flatMap<T>(_ transform: (Wrapped) throws -> JSONOptional<T>) rethrows -> JSONOptional<T> {
        switch self {
        case .missingKey:
            return .missingKey
        case .null:
            return .null
        case .some(let wrapped):
            return try transform(wrapped)
        }
    }

}

extension JSONOptional: Resolvable where Wrapped: Resolvable { }

extension JSONOptional: InputResolvable where Wrapped: InputResolvable {
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return try context.resolve(type: Optional<Wrapped>.self)
    }

    public static func create(from map: Map) throws -> JSONOptional<Wrapped> {
        switch map {
        case .null:
            return .null
        default:
            return .some(try Wrapped.create(from: map))
        }
    }

    public static func createFromMissingKey() throws -> JSONOptional<Wrapped> {
        return .missingKey
    }

}
