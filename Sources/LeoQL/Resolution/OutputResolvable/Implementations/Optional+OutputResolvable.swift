
import Foundation
import GraphQL
import NIO

extension Optional: OutputResolvable where Wrapped: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Wrapped.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        guard let resolved = try context.resolve(type: Wrapped.self) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
        return type
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        guard let value = self else { return eventLoop.next().makeSucceededFuture(nil) }
        return try value.resolve(source: source, arguments: arguments, eventLoop: eventLoop)
    }

}
