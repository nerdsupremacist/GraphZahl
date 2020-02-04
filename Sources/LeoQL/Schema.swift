
import GraphQL

protocol Schema {
    associatedtype Query: Object
    associatedtype Mutation: Object
}

extension Schema {
    
    internal func resolve() throws -> GraphQLSchema {
        var context = Resolution.Context.empty

        let query = try Query.resolveObject(using: &context)

        let mutation: GraphQLObjectType?
        if Mutation.self != Never.self {
            mutation = try Mutation.resolveObject(using: &context)
        } else {
            mutation = nil
        }

        return try GraphQLSchema(query: query,
                                 mutation: mutation,
                                 subscription: nil,
                                 types: [],
                                 directives: [])
    }
    
}
