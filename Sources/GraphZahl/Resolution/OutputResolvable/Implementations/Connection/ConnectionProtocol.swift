
import Foundation
import NIO
import GraphQL
import ContextKit

/**
 # ConnectionProtocol

 Describes an Object used for Cursor-Based Pagination.
 This API is modeled after standards set by [Relay](https://relay.dev/docs/en/pagination-container) and [GraphQL](https://graphql.org/learn/pagination/).

 It relies on the usage of the arguments: `first`, `after`, `last` and `before`.

 - Parameters:
     - first: Number of items that will be fetched at the start of the list
     - after: Cursor of the last element in the page that comes before. Signals that all items in the requested page should be strictly after the element with that cursor. The element with the cursor should be excluded
     - last: Number of items that will be fetched at the end of the list
     - before: Cursor of the first element in the page that comes after. Signals that all items in the requested page should be strictly before the element with that cursor. The element with the cursor should be excluded

 ## Note

 This is a bare bones implementation of Paging, and is not particularly efficient.

 If you notice that your methods are all sharing a lot of logic together, perhaps you should take a look at `ContextBasedConnection` insttead.
 */
public protocol ConnectionProtocol: OutputResolvable, ConcreteResolvable {
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
     Computes the number of items in the list.

     - Returns: A future with the computed count.
     */
    func totalCount() -> EventLoopFuture<Int>

    /**
     Computes information about the current page.
     This Information includes the start and end cursor and whether or not there's adjacent pages.

     - Parameters:
         - first: Number of items that will be fetched at the start of the list
         - after: Cursor of the last element in the page that comes before. Signals that all items in the requested page should be strictly after the element with that cursor. The element with the cursor should be excluded
         - last: Number of items that will be fetched at the end of the list
         - before: Cursor of the first element in the page that comes after. Signals that all items in the requested page should be strictly before the element with that cursor. The element with the cursor should be excluded
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with the computed Page Info
     */
    func pageInfo(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<PageInfo>


    /**
     Computes the edges for the current page

     - Parameters:
         - first: Number of items that will be fetched at the start of the list
         - after: Cursor of the last element in the page that comes before. Signals that all items in the requested page should be strictly after the element with that cursor. The element with the cursor should be excluded
         - last: Number of items that will be fetched at the end of the list
         - before: Cursor of the first element in the page that comes after. Signals that all items in the requested page should be strictly before the element with that cursor. The element with the cursor should be excluded
         - eventLoop: Event Loop Group that can be used to create the futures

     - Returns: A future with an array of edges.
     */
    func edges(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<[Edge?]?>
}

extension ConnectionProtocol {

    public static var concreteTypeName: String {
        return "\(Node.concreteTypeName)\(String(describing: Self.self))"
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var additionalArguments: [String : InputResolvable.Type] {
        return ConnectionWrapper<Self>.additionalArguments
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: ConnectionWrapper<Self>.self)
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let first = try arguments["first"]?.intValue(converting: true)
        let after = try arguments["after"]?.stringValue(converting: true)
        let last = try arguments["last"]?.intValue(converting: true)
        let before = try arguments["before"]?.stringValue(converting: true)

        let connection = ConnectionWrapper(connection: self,
                                           eventLoop: eventLoop,
                                           first: first,
                                           after: after,
                                           last: last,
                                           before: before)

        return eventLoop.next().makeSucceededFuture(connection)
    }

}
