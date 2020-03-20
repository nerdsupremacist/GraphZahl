
import Foundation
import GraphQL

extension GraphQLSchema {

    static func resolve() throws -> GraphQL.GraphQLSchema {
        var context = Resolution.Context.empty

        let query = try Query.resolveObject(using: &context)

        let mutation: GraphQLObjectType?
        if Mutation.self != None.self {
            mutation = try Mutation.resolveObject(using: &context)
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
