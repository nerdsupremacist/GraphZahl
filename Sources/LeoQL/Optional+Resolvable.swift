
import Foundation
import GraphQL
import NIO

extension Optional: OutputResolvable where Wrapped: OutputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        guard let resolved = try Wrapped.resolve(using: &context) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
        return type
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        guard let value = self else { return eventLoop.next().newSucceededFuture(result: nil) }
        return value.resolve(source: source, arguments: arguments, eventLoop: eventLoop)
    }

}

extension Optional: InputResolvable where Wrapped: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        guard let resolved = try Wrapped.resolve(using: &context) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLInputType else { fatalError() }
        return type
    }

    public init(map: Map) throws {
        switch map {
        case .null:
            self = .none
        default:
            self = try Wrapped(map: map)
        }
    }

}
