
import Foundation
import GraphQL
import NIO

extension Array: OutputResolvable where Element: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Element.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLList(try context.resolve(type: Element.self)))
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let futures = try map { try $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }
        return Future.whenAll(futures, eventLoop: eventLoop.next()).map { $0 as Any? }
    }

}
