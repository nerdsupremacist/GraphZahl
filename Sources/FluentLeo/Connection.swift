
import Foundation
import NIO
import LeoQL
import Fluent
import Runtime
import GraphQL

class Connection<Node: Model & OutputResolvable & ConcreteResolvable> {
    struct Edge {
        let node: Node?
        let cursor: String

        init(node: Node?, cursor: String) {
            self.node = node
            self.cursor = cursor
        }
    }

    let eventLoop: EventLoopGroup

    let query: QueryBuilder<Node>

    let first: Int?
    let after: String?
    let last: Int?
    let before: String?

    var cachedCount: EventLoopFuture<Int>?
    var cachedRange: EventLoopFuture<Range<Int>>?

    func range() -> EventLoopFuture<Range<Int>> {
        if let range = cachedRange {
            return range
        }

        var start = eventLoop.future(0)
        var end = totalCount()

        if let after = after {
            fatalError()
        }

        if let before = before {
            fatalError()
        }

        if let first = first {
            end = start.and(end).map { start, end in
                min(start + first, end)
            }
        }

        if let last = last {
            start = start.and(end).map { start, end in
                max(start, end - last)
            }
        }

        let range = start.and(end).map { $0..<$1 }
        cachedRange = range
        return range
    }

    func pageInfo() -> EventLoopFuture<PageInfo> {
        return range().and(totalCount()).map { range, count in
            PageInfo(hasNextPage: range.upperBound < count,
                     hasPreviousPage: range.lowerBound > 0,
                     startCursor: nil,
                     endCursor: nil)
        }
    }

    func edges() -> EventLoopFuture<[Edge?]?> {
        let query = self.query
        return range()
            .map { query.range($0) }
            .flatMap { $0.all() }
            .map { $0.map { Edge(node: $0, cursor: "TODO") } }
    }

    func totalCount() -> EventLoopFuture<Int> {
        if let count = cachedCount { return count }

        let future = query.count()
        cachedCount = future
        return future
    }

    init(eventLoop: EventLoopGroup,
         query: QueryBuilder<Node>,
         first: Int?,
         after: String?,
         last: Int?,
         before: String?) {

        self.eventLoop = eventLoop
        self.query = query
        self.first = first
        self.after = after
        self.last = last
        self.before = before
    }
}

extension Connection: ConcreteResolvable {

    static var concreteTypeName: String {
        return "\(Node.concreteTypeName)Connection"
    }

}

extension Connection: OutputResolvable {

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
            "pageInfo" : GraphQLField(type: try context.resolve(type: PageInfo.self)) { (receiver, args, _, eventLoop, _) -> Future<Any?> in
                return (receiver as! Connection<Node>)
                    .pageInfo()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), eventLoop: eventLoop)
            },
            "edges" : GraphQLField(type: try context.resolve(type: [Edge?]?.self)) { (receiver, args, _, eventLoop, _) -> Future<Any?> in
                return (receiver as! Connection<Node>)
                    .edges()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), eventLoop: eventLoop)
            },
            "totalCount" : GraphQLField(type: try context.resolve(type: Int.self)) { (receiver, args, _, eventLoop, _) -> Future<Any?> in
                return (receiver as! Connection<Node>)
                    .totalCount()
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), eventLoop: eventLoop)
            },
        ]

        return GraphQLNonNull(
            try GraphQLObjectType(name: concreteTypeName, fields: fields)
        )
    }

    func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.future(self)
    }

}

extension Connection.Edge: ConcreteResolvable {

    static var additionalArguments: [String : InputResolvable.Type] {
        return Node?.additionalArguments
    }

}

extension Connection.Edge: OutputResolvable {

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let fields = [
            "node" : GraphQLField(type: try context.resolve(type: Optional<Node>.self)) { (receiver, args, _, eventLoop, _) -> Future<Any?> in
                return try (receiver as! Connection<Node>.Edge)
                    .node
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), eventLoop: eventLoop)
            },
            "cursor" : GraphQLField(type: try context.resolve(type: String.self)) { (receiver, args, _, eventLoop, _) -> Future<Any?> in
                return (receiver as! Connection<Node>.Edge)
                    .cursor
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), eventLoop: eventLoop)
            },
        ]

        return GraphQLNonNull(
            try GraphQLObjectType(name: concreteTypeName, fields: fields)
        )
    }

    func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.future(self)
    }

}
