
import GraphQL
import NIO

/**
 # GraphQL Schema

 A GraphQL Schema describes the entire API that is available.
 It's basically only a name space for your Query and Mutation Types.

 Your Query and Mutation Types have to be Root Types with the same Viewer Context.
 - A Query Type is mandatory.
 - A Mutation Type is optional.

 ## Examples

 If you only want to offer a Query Type, you only need to implement that class:

 ```swift
 enum MySchema {

    class Query: QueryType {
        func greeting(name: String = "World") -> String {
            return "Hello, \(name)!"
        }

        init(viewerContext: ()) { ... }
    }

 }
 ```

 that gets translated to the following schema:

 ```graphql
 type Query {
    greeting(name: String! = "World"): String!
 }
 ```

 Alternatively you can also specify a Mutation Type:

 ```swift
 enum MySchema {
    class Query: QueryType {
        func greeting(name: String = "World") -> String {
            return "Hello, \(name)!"
        }

        init(viewerContext: ()) { ... }
    }

    class Mutation: MutationType {
        func store(status: String) -> String { ... }

        init(viewerContext: ()) { ... }
    }
 }
 ```

 Which would generate this Schema:


 ```graphql
 type Query {
    greeting(name: String! = "World"): String!
 }

 type Mutation {
    store(status: String!): String!
 }
 ```

 If your types need to have a context for the current user, they need to use the exact same `ViewerContext`:

 ```swift
 enum MySchema {
    typealias ViewerContext = User

    class Query: QueryType {
        let user: User

        var greeting: String {
            return "Hello, \(user.name)!"
        }

        init(viewerContext: User) { ... }
    }

    class Mutation: MutationType {
        let user: User

        func store(status: String) -> String { ... }

        init(viewerContext: User) { ... }
    }
 }
 ```
*/
public protocol GraphQLSchema {
    /**
     Type of the Response of the Schema
    */
    typealias Result = GraphQLResult

    /**
     Type of an Empty Mutation Type. Signals GraphZahl that no mutations are allowed
    */
    typealias None = EmptyRootType<ViewerContext>

    /**
     Type that tells the Query/Mutation type everything about the User.
     This defaults to Void, to signal that all requests are treated the same, and this API does not compute anything different on a by user basis.
    */
    associatedtype ViewerContext = Void

    /**
     Type of the Query for this Schema. Should conform to `QueryType`. And should have the same Viewer Context as the Schema
    */
    associatedtype Query: QueryType where Query.ViewerContext == ViewerContext


    /**
     Type of the Mutation for this Schema. Should conform to `MutationType`. And should have the same Viewer Context as the Schema.
     Defaults to `None` signalling GraphZahl that no mutations are allowed.
    */
    associatedtype Mutation: MutationType = None where Mutation.ViewerContext == ViewerContext
}
