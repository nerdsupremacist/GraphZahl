
import Foundation
import GraphQL
import NIO

public protocol OutputResolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType

    func resolve(eventLoop: EventLoopGroup) -> Future<Any?>
}
