
import Foundation
import GraphQL

public protocol InputResolvable: Resolvable {
    init(map: Map) throws
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType
}

