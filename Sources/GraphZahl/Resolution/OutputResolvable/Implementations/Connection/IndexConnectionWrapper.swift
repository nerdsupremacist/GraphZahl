
import Foundation
import NIO

private var translators: [ConnectionIdentifier : IndexCursorTranslator] = [:]

private struct ConnectionIdentifier: Hashable {
    let type: Int
    let connection: AnyHashable
}

struct IndexedConnectionWrapper<Connection: IndexedConnection>: ContextBasedConnection, ConcreteResolvable {
    static var concreteTypeName: String {
        return "\(Node.concreteTypeName)Connection"
    }

    typealias Node = Connection.Node

    struct Context {
        let totalCount: Int
        let offset: Int
        let size: Int
    }

    private let connection: Connection
    private let identifier: ConnectionIdentifier

    init(connection: Connection) {
        self.connection = connection
        self.identifier = ConnectionIdentifier(type: unsafeBitCast(Connection.self as Any.Type, to: Int.self),
                                               connection: AnyHashable(connection.identifier))
    }

    private func cursor(for index: Int) throws -> String {
        return try translators[identifier, default: Connection.Translator()].cursor(for: index)
    }

    private func index(for cursor: String) throws -> Int {
        return try translators[identifier, default: Connection.Translator()].index(for: cursor)
    }

    func context(first: Int?, after: String?, last: Int?, before: String?, eventLoop: EventLoopGroup) -> EventLoopFuture<Context> {
        return connection
            .totalCount(eventLoop: eventLoop)
            .and(connection.defaultPageSize(eventLoop: eventLoop))
            .flatMapThrowing { totalCount, defaultPageSize in
                let perPage = defaultPageSize ?? totalCount

                if perPage == 0 {
                    return Context(totalCount: totalCount, offset: 0, size: 0)
                }

                let first = first == nil && last == nil ? perPage : first
                var start = 0
                var end = totalCount

                if let after = try after.map(self.index(for:)) {
                    start = max(start, after + 1)
                }

                if let before = try before.map(self.index(for:)) {
                    end = min(before, end)
                }

                if let first = first {
                    end = min(start + first, end)
                }

                if let last = last {
                    start = max(start, end - last)
                }

                return Context(totalCount: totalCount, offset: start, size: max(end - start, 0))
            }
    }

    func totalCount(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<Int> {
        return eventLoop.next().makeSucceededFuture(context.totalCount)
    }

    func pageInfo(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<PageInfo> {
        return eventLoop.next().submit {
            let hasNextPage = context.offset + context.size < context.totalCount
            let hasPreviousPage = context.offset > 0

            return PageInfo(hasNextPage: hasNextPage,
                            hasPreviousPage: hasPreviousPage,
                            startCursor: try self.cursor(for: context.offset),
                            endCursor: try self.cursor(for: context.offset + context.size - 1))
        }
    }

    func edges(context: Context, eventLoop: EventLoopGroup) -> EventLoopFuture<[StandardEdge<Node>?]?> {
        if context.size < 1 {
            return eventLoop.next().makeSucceededFuture([])
        }

        return connection
            .nodes(offset: context.offset, size: context.size, eventLoop: eventLoop)
            .flatMapThrowing { nodes in
                try nodes?.enumerated().map { StandardEdge(node: $0.element, cursor: try self.cursor(for: context.offset + $0.offset)) }
            }
    }
}
