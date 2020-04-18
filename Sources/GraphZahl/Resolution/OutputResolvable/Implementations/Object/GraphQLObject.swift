
import Foundation

/**
 # GraphQLObject

 A GraphQL Object is a Class that can be used as an output in GraphQL.

 It behaves as follows:
 - All properties of types that are `OutputResolvable` (can be outputs in GraphQL) will be added to the Schema.
 - All methods where all arguments are of types that are `InputResolvable` (can be inputs in GraphQL) and the return type is `OutputResolvable` (can be outputs in GraphQL) will be added to the Schema.

 ## Example

 If we are implementing a Todo App, a Todo and User in our API would be two classes:

 ```swift
 class Author: GraphQLObject {
    var name: String

    func store() { /* store object in DB */ }

    func todos() -> [Todo] { ... }
 }

 class Todo: GraphQLObject {
    var title: String
    var completed: Bool

    func store() { /* store object in DB */ }

    func author() -> User { ... }
 }
 ```

 The previous code would then be exported to GraphQL like so:

 ```graphql
 type User {
    name: String!
    todos: [Todo!]!
 }

 type Todo {
    title: String!
    completed: Boolean!
    author: User!
 }
 ```

 As can be seen in the example:
 - All the properties are scalar values that can be outputs in GraphQL.
 - All the properties are included.
 - And all the functions that return GraphQL Values are also included
 - The store functions return `Void`, which is not a GraphQL Output. These methods are therefore not included.
 */
public protocol GraphQLObject : class, OutputResolvable, ConcreteResolvable, KeyPathListable {
    /**
     Loads object from source.

     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.

     - Parameters:
         - source: In most cases it's just an instance of `Self`, except with Root Types, where it's an instance of the `ViewerContext`

     - Returns: the object that will be used for method dispatching
    */
    static func object(from source: Any) -> AnyObject
}

extension GraphQLObject {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public static func object(from source: Any) -> AnyObject {
        return source as AnyObject
    }

}
