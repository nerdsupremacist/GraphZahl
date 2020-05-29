
import Foundation
import ContextKit
import NIO
import GraphQL

public protocol DelegatedOutputResolvable: OutputResolvable {
    associatedtype Output: OutputResolvable

    func resolve(source: Any,
                 arguments: [String : Map],
                 context: MutableContext,
                 eventLoop: EventLoopGroup) throws -> Output
}

extension DelegatedOutputResolvable {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var additionalArguments: [String : InputResolvable.Type] {
        return Output.additionalArguments
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.reference(for: Output.self)
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: Output.self)
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        return try resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
            .resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
    }


}
