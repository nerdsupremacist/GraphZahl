
import Foundation
import GraphQL

protocol Resolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType
}
