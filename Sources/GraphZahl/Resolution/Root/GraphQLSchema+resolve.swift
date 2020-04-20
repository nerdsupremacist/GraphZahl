
import Foundation
import GraphQL

extension GraphQLSchema {

    static func resolve(viewerContext: ViewerContext) throws -> GraphQL.GraphQLSchema {
        var context = Resolution.Context.empty(viewerContextType: ViewerContext.self, viewerContext: viewerContext)

        let query = try context.resolve(object: Query.self)

        let mutation: GraphQLObjectType?
        if Mutation.self != None.self {
            mutation = try context.resolve(object: Mutation.self)
        } else {
            mutation = nil
        }

        return try GraphQL.GraphQLSchema(query: query,
                                         mutation: mutation,
                                         subscription: nil,
                                         types: try context.types(),
                                         directives: [])
    }

}
