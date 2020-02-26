
import Foundation
import GraphQL
import NIO

extension EventLoopFuture: Resolvable where T: Resolvable {

    public static var typeName: String {
        return T.typeName
    }

}

extension EventLoopFuture: OutputResolvable where T: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return T.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try T.resolve(using: &context)
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return flatMap { try $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }
    }

}
