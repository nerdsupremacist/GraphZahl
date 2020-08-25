
import Foundation
import GraphQL
import NIO

public indirect enum Output {
    case map(Map)
    case array([Output])
    case future(EventLoopFuture<Output>)
    case object(GraphQLObject)
    case unsafeReceiver(Any)
}

extension Output {

    func convert(eventLoopGroup: EventLoopGroup) -> EventLoopFuture<Any?> {
        switch self {
        case .map(let map):
            return eventLoopGroup.next().makeSucceededFuture(map)
        case .array(let array):
            let futures = array.map { $0.convert(eventLoopGroup: eventLoopGroup) }
            return Future.whenAllSucceed(futures, on: eventLoopGroup.next()).map { $0 }
        case .future(let future):
            return future.flatMap { $0.convert(eventLoopGroup: eventLoopGroup) }
        case .object(let object):
            return eventLoopGroup.next().makeSucceededFuture(object)
        case .unsafeReceiver(let receiver):
            return eventLoopGroup.next().makeSucceededFuture(receiver)
        }
    }

}
