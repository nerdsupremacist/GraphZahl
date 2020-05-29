
import Foundation
import NIO

public protocol FixedPageSizeIndexedConnection: IndexedConnection {
    func pageSize(eventLoop: EventLoopGroup) -> EventLoopFuture<Int>
    func page(at index: Int, eventLoop: EventLoopGroup) -> EventLoopFuture<[Node?]>
}

extension FixedPageSizeIndexedConnection {

    public func defaultPageSize(eventLoop: EventLoopGroup) -> EventLoopFuture<Int?> {
        return pageSize(eventLoop: eventLoop).map(Optional.some)
    }

    public func nodes(offset: Int, size: Int, eventLoop: EventLoopGroup) -> EventLoopFuture<[Node?]?> {
        return totalCount(eventLoop: eventLoop)
            .and(pageSize(eventLoop: eventLoop))
            .flatMap { totalCount, pageSize in
                let end = offset + size
                let firstPage = offset / pageSize
                let lastPage = (end - 1) / pageSize
                let pages = firstPage...lastPage

                let skipOnFirst = offset.quotientAndRemainder(dividingBy: pageSize).remainder
                let skipOnLast = min(
                    (pageSize - end.quotientAndRemainder(dividingBy: pageSize).remainder).quotientAndRemainder(dividingBy: pageSize).remainder,
                    totalCount - end
                )

                let futures = pages
                    .map { self.page(at: $0, eventLoop: eventLoop) }

                return EventLoopFuture
                    .whenAllSucceed(futures, on: eventLoop.next())
                    .map { $0.flatMap { $0 } }
                    .map { $0.dropFirst(skipOnFirst).dropLast(skipOnLast) }
            }
    }

}
