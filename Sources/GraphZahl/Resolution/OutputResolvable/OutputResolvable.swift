
import Foundation
import GraphQL
import NIO
import ContextKit

public protocol OutputResolvable: Resolvable {
    static var additionalArguments: [String : InputResolvable.Type] { get }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Future<Any?>
}

extension OutputResolvable {

    static func additionalGraphqlArguments(using context: inout Resolution.Context) throws -> [String : GraphQLArgument] {
        return try additionalArguments
            .mapValues { try context.resolve(type: $0) }
            .mapValues { GraphQLArgument(type: $0) }
    }

}
