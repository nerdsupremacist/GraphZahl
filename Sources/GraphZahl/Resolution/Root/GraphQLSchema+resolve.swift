
import Foundation
import GraphQL

extension GraphQLSchema {

    static func resolve() throws -> GraphQL.GraphQLSchema {
        var context = Resolution.Context.empty(viewerContext: ViewerContext.self)

        let query = try context.resolve(object: Query.self)

        let mutation: GraphQLObjectType?
        if Mutation.self != None.self {
            mutation = try context.resolve(object: Query.self)
        } else {
            mutation = nil
        }

        return try GraphQL.GraphQLSchema(query: query,
                                         mutation: mutation,
                                         subscription: nil,
                                         types: [],
                                         directives: [])
    }

}
