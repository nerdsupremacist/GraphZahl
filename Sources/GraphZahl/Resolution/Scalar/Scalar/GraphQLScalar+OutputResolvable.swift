
import Foundation
import GraphQL
import NIO
import ContextKit

extension GraphQLScalar {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try GraphQLNonNull(resolve())
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(self)
    }

}
