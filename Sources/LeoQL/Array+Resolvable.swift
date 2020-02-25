
import Foundation
import GraphQL

extension Array: OutputResolvable where Element: OutputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLList(try Element.resolve(using: &context)))
    }

}
