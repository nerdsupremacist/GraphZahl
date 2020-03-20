
import Foundation
import GraphQL

public protocol InputResolvable: Resolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType

    init(map: Map) throws
}
