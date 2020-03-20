
import Foundation
import GraphQL
import NIO

extension EventLoopFuture: OutputResolvable where Value: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Value.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: Value.self)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {

        return flatMapThrowing { try $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }.flatMap { $0 }
    }

}
