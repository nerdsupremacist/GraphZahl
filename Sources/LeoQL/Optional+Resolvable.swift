
import Foundation
import GraphQL
import NIO
import Runtime

extension Optional: Resolvable where Wrapped: Resolvable {

    public static var typeName: String {
        return Wrapped.typeName
    }

}

extension Optional: OutputResolvable where Wrapped: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Wrapped.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        guard let resolved = try Wrapped.resolve(using: &context) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
        return type
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        guard let value = self else { return eventLoop.next().newSucceededFuture(result: nil) }
        return try value.resolve(source: source, arguments: arguments, eventLoop: eventLoop)
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
