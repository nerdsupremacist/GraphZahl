
import Foundation
import GraphQL

public protocol OutputResolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType
}
