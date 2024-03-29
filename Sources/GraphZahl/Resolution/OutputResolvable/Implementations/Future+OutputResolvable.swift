
import Foundation
import GraphQL
import NIO
import ContextKit

/**
 # Conditional Conformance

 All Futures of values that are GraphQL Outputs, can be outputs themselves
 */
extension EventLoopFuture: OutputResolvable where Value: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Value.additionalArguments
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.reference(for: Value.self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: Value.self)
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Output {
        let future = flatMapThrowing { try $0.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop) }
        return .future(future)
    }

}
