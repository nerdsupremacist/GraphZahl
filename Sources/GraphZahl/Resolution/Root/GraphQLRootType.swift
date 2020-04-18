
import Foundation

/**
 # GraphQL Root Type

 An GraphQL Object that is at the Root of a Schema. Can either be a Query Type or a Mutation Type

 The only additional requirement for a `GraphQLType` is that it can be initialized with a `ViewerContext`.
 The `ViewerContext` in this scenario refers to a Context Object, that tells the Query/Mutation Type what it needs to know about the User who is requesting the data.

 ## Example

 If we are building a Todo App and want allow users to request their Todos. We can use the User as a ViewerContext

 ```swift
 class Query: GraphQLRootType {
    let user: User

    func myTodos() -> [Todo] { ... }

    init(viewerContext user: User) {
        self.user = user
    }
 }
 ```

 This is then translated into:

 ```graphql
 type Query {
    myTodos: [Todo!]!
 }
 ```
 */
public protocol GraphQLRootType : GraphQLObject {
    /**
     Type that tells the Query/Mutation type everything about the User.
     This defaults to Void, to signal that all requests are treated the same, and this API does not compute anything different on a by user basis.
    */
    associatedtype ViewerContext = Void

    /**
     Initializes the  type based on the Viewer Context.

     - Parameter viewerContext: Viewer Context for this Type
    */
    init(viewerContext: ViewerContext)
}

extension GraphQLRootType {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static func object(from source: Any) -> AnyObject {
        if let viewerContext = source as? ViewerContext {
            return Self(viewerContext: viewerContext)
        }
        return source as AnyObject
    }

}
