
import Foundation
import NIO
import GraphQL
import ContextKit

class ConnectionWrapper<Connection: ConnectionProtocol> {
    private let connection: Connection
    private let eventLoop: EventLoopGroup

    private let first: Int?
    private let after: String?
    private let last: Int?
    private let before: String?

    init(connection: Connection,
         eventLoop: EventLoopGroup,
         first: Int?,
         after: String?,
         last: Int?,
         before: String?) {

        self.connection = connection
        self.eventLoop = eventLoop
        self.first = first
        self.after = after
        self.last = last
        self.before = before
    }
}

extension ConnectionWrapper {

    private func pageInfo() -> EventLoopFuture<PageInfo> {
        return connection.pageInfo(first: first, after: after, last: last, before: before, eventLoop: eventLoop)
    }

    private func edges() -> EventLoopFuture<[Connection.Edge?]?> {
        return connection.edges(first: first, after: after, last: last, before: before, eventLoop: eventLoop)
    }

    private func totalCount() -> EventLoopFuture<Int> {
        return connection.totalCount()
    }

}

extension ConnectionWrapper: ConcreteResolvable {

    static var concreteTypeName: String {
        return Connection.concreteTypeName
    }

}

extension ConnectionWrapper: OutputResolvable {

    static var additionalArguments: [String : InputResolvable.Type] {
        return [
            "first" : Int?.self,
            "after" : String?.self,
            "last" : Int?.self,
            "before" : String?.self,
        ]
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let fields = [
            "pageInfo" : GraphQLField(type: try context.reference(for: PageInfo.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return (receiver as! ConnectionWrapper<Connection>)
                    .pageInfo()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext, eventLoop: eventLoop)
            },
            "edges" : GraphQLField(type: try context.reference(for: [Connection.Edge?]?.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return (receiver as! ConnectionWrapper<Connection>)
                    .edges()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext, eventLoop: eventLoop)
            },
            "totalCount" : GraphQLField(type: try context.reference(for: Int.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return (receiver as! ConnectionWrapper<Connection>)
                    .totalCount()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext, eventLoop: eventLoop)
            },
        ]

        return GraphQLNonNull(
            try GraphQLObjectType(name: concreteTypeName, fields: fields)
        )
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(self)
    }

}
