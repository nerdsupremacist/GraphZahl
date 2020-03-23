
import Foundation
import NIO
import GraphQL
import ContextKit

public protocol ConnectionProtocol: OutputResolvable, ConcreteResolvable {
    associatedtype Node
    associatedtype Edge: EdgeProtocol = StandardEdge<Node> where Edge.Node == Node

    func totalCount() -> EventLoopFuture<Int>
    func pageInfo(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<PageInfo>
    func edges(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<[Edge?]?>
}

extension ConnectionProtocol {

    public static var concreteTypeName: String {
        return "\(Node.concreteTypeName)\(String(describing: Self.self))"
    }

    public static var additionalArguments: [String : InputResolvable.Type] {
        return ConnectionWrapper<Self>.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: ConnectionWrapper<Self>.self)
    }

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
