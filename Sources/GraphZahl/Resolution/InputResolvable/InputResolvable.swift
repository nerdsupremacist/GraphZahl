
import Foundation
import GraphQL

public protocol InputResolvable: ValueResolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType

    init(map: Map) throws
}
