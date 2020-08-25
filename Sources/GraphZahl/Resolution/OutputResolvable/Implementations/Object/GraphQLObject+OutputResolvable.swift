
import Foundation
import GraphQL
import NIO
import ContextKit

extension GraphQLObject {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(try resolveObject(using: &context))
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> Output {

        return .object(self)
    }

}
