
import Foundation
import GraphQL

/**
 # Value Resolvable

 A type that can be turned into a GraphQL Value.
 Generally used to convert default values into something that can be added to the Schema
 */
public protocol ValueResolvable: Resolvable {
    func map() throws -> Map
}
