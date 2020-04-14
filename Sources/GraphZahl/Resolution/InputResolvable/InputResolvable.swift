
import Foundation
import GraphQL

public protocol InputResolvable: ValueResolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType

    static func create(from map: Map) throws -> Self
}
