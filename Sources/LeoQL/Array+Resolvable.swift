
import Foundation
import GraphQL

extension Array: Resolvable where Element: Resolvable {

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLList(try Element.resolve(using: &context))
    }

}
