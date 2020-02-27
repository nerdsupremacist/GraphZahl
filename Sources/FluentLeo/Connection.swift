
import Foundation
import NIO
import LeoQL
import Fluent
import Runtime

class Connection<Node: Model & OutputResolvable & ConcreteResolvable>: Object {
    class Edge: Object {
        let node: Node?
        let cursor: String

        init(node: Node?, cursor: String) {
            self.node = node
            self.cursor = cursor
        }
    }

    static var additionalArguments: [String : InputResolvable.Type] {
        return [
            "first" : Int?.self,
            "after" : String?.self,
            "last" : Int?.self,
            "before" : String?.self,
        ]
    }

    static var concreteTypeName: String {
        return "\(Node.concreteTypeName)Connection"
    }

    let eventLoop: EventLoopGroup

    @Ignore
    var query: QueryBuilder<Node>

    @Ignore
    var first: Int?

    @Ignore
    var after: String?

    @Ignore
    var last: Int?

    @Ignore
    var before: String?

    @Ignore
    var cachedCount: EventLoopFuture<Int>?

    @Ignore
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
