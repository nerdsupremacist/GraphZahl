
import Foundation
import NIO
import Vapor

extension EventLoopFuture {

    func thenThrowing<U>(_ callback: @escaping (Value) throws -> EventLoopFuture<U>) -> EventLoopFuture<U> {
        let throwing: EventLoopFuture<EventLoopFuture<U>> = flatMapThrowing(callback)
        return throwing.flatMap { $0 }
    }

}
