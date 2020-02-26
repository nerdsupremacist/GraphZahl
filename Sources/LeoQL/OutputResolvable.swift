
import Foundation
import GraphQL
import NIO

public protocol OutputResolvable: Resolvable {
    static var additionalArguments: [String : InputResolvable.Type] { get }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType

    func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) throws -> Future<Any?>
}
