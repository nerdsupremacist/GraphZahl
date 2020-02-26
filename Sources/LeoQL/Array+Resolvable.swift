
import Foundation
import GraphQL
import NIO

extension Array: OutputResolvable where Element: OutputResolvable {
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLList(try Element.resolve(using: &context)))
    }
    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        let futures = map { $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }
        return Future.whenAll(futures, eventLoop: eventLoop.next()).map { $0 as Any? }
    }
}

extension Array: InputResolvable where Element: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(GraphQLList(try Element.resolve(using: &context)))
    }

    public init(map: Map) throws {
        self = try map.arrayValue().map { try Element(map: $0) }
    }

}
