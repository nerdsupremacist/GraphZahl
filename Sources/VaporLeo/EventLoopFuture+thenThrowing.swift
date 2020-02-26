
import Foundation
import NIO

extension EventLoopFuture {

    func thenThrowing<U>(_ callback: @escaping (T) throws -> EventLoopFuture<U>) -> EventLoopFuture<U> {
        let throwing: EventLoopFuture<EventLoopFuture<U>> = thenThrowing(callback)
        return throwing.then { $0 }
    }

}
