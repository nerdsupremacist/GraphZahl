
import Foundation
import GraphQL

public protocol Resolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType
}
