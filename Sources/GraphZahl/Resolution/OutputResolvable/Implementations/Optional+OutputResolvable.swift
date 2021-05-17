
import Foundation
import GraphQL
import NIO
import ContextKit

/**
 # Conditional Conformance

 All optionals of values that are GraphQL Outputs, can be outputs themselves
 */
extension Optional: OutputResolvable where Wrapped: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Wrapped.additionalArguments
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        switch try context.reference(for: Wrapped.self) {
        case let resolved as GraphQLNonNull:
            guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
            return type
        case let type:
            return type
        }
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        switch try context.resolve(type: Wrapped.self) {
        case let resolved as GraphQLNonNull:
            guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
            return type
        case let type:
            return type
        }
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> Output {

        guard let value = self else { return .map(.null) }
        return try value.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
    }

}
