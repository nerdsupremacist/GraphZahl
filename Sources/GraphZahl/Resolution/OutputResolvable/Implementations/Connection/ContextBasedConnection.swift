
import Foundation
import NIO
import GraphQL
import ContextKit

/**
 # ContextBasedConnection

 Describes an Object used for Cursor-Based Pagination.
 This API is modeled after standards set by [Relay](https://relay.dev/docs/en/pagination-container) and [GraphQL](https://graphql.org/learn/pagination/).

 It relies on the usage of the arguments: `first`, `after`, `last` and `before`.
    - `first`: Number of items that will be fetched at the start of the list
    - `after`: Cursor of the last element in the page that comes before. Signals that all items in the requested page should be strictly after the element with that cursor. The element with the cursor should be excluded
    - `last`: Number of items that will be fetched at the end of the list
    - `before`: Cursor of the first element in the page that comes after. Signals that all items in the requested page should be strictly before the element with that cursor. The element with the cursor should be excluded

 ## Note

 This is very similar to  `ConnectionProtocol`.

 `ContextBasedConnection` describes the same functionality of `ConnectionProtocol`but attemps to compute certain context information about a page only once.

 A type implementing this protocol will first compute a context object that the other methods can use, instead of the raw arguments `first`, `after`, `last` and `before`.
 It is intended for scenarios where `totalCount`, `pageInfo` and `edges` all rely on very similar information.
 */
public protocol ContextBasedConnection: OutputResolvable, ConcreteResolvable {
    /**
     Type of Item in the List. Has to conform to `OutputResolvable`
     */
    associatedtype Node

    /**
     Type of Edges in the List.
     Edges may contain additional information.

     If no edge type is provided, it will default to the Standard Implementation.
     */
    associatedtype Edge: EdgeProtocol = StandardEdge<Node> where Edge.Node == Node

    /**
     Context that describes some computations that your other methods need
     */
    associatedtype Context

    /**
     Converts the raw page arguments into the required context object.

     - Parameters:
         - first: Number of items that will be fetched at the start of the list
         - after: Cursor of the last element in the page that comes before. Signals that all items in the requested page should be strictly after the element with that cursor. The element with the cursor should be excluded
         - last: Number of items that will be fetched at the end of the list
         - before: Cursor of the first element in the page that comes after. Signals that all items in the requested page should be strictly before the element with that cursor. The element with the cursor should be excluded
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with the computed Context object
     */
    func context(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<Context>

    /**
     Computes the number of items in the list based on the context.

     - Parameters:
         - context: Precomputed Context
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with the computed count.
     */
    func totalCount(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<Int>

    /**
     Computes information about the current page based on the context..
     This Information includes the start and end cursor and whether or not there's adjacent pages.

     - Parameters:
         - context: Precomputed Context
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with the computed Page Info
     */
    func pageInfo(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<PageInfo>

    /**
     Computes the edges for the current page

     - Parameters:
         - context: Precomputed Context
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with an array of edges.
     */
    func edges(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<[Edge?]?>
}

extension ContextBasedConnection {

    public static var concreteTypeName: String {
        return "\(Node.concreteTypeName)\(String(describing: Self.self))"
    }
    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var additionalArguments: [String : InputResolvable.Type] {
        return ContextBasedConnectionWrapper<Self>.additionalArguments
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: ContextBasedConnectionWrapper<Self>.self)
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let first = try Optional<Int>.create(from: arguments["first"] ?? .null)
        let after = try Optional<String>.create(from: arguments["after"] ?? .null)
        let last = try Optional<Int>.create(from: arguments["last"] ?? .null)
        let before = try Optional<String>.create(from: arguments["before"] ?? .null)

        let connection = ContextBasedConnectionWrapper(connection: self,
                                                       eventLoop: eventLoop,
                                                       first: first,
                                                       after: after,
                                                       last: last,
                                                       before: before)

        return eventLoop.next().makeSucceededFuture(connection)
    }

}
