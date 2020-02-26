
import Foundation
import GraphQL
import NIO

extension EventLoopFuture: OutputResolvable where T: OutputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try T.resolve(using: &context)
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return flatMap { $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }
    }

}
