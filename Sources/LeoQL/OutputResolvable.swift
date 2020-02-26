
import Foundation
import GraphQL
import NIO

public protocol OutputResolvable {
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType

    func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> Future<Any?>
}
