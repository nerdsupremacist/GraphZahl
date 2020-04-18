
import Foundation
import GraphQL
import NIO
import ContextKit

/**
 - Attention: this is a low level API. Do not use this directly unless you know what you're doing.

 # OutputResolvable

 Output Resolvable describes an Object that can be used as an Output in GraphQL.

 It means that for a method or property to be available in GraphQL, all the output has to conform to `OutputResolvable`

 Output Resolvable Types are:
 - Scalars
 - Enums
 - Objects
 - Root Types
 - Optionals, Futures and Arrays through Conditional Conformance
 */
public protocol OutputResolvable: Resolvable {

    /**
     Additional Arguments you will need when resolving the value in `resolve(source:arguments:context:eventLoop)`.
     */
    static var additionalArguments: [String : InputResolvable.Type] { get }

    /**
    - Warning: never call this method directly. Always use: `context.reference(for: ...)`

    Creates a Reference to the GraphQL Type

    - Parameter context: Resolution Context where all the type relationships are stored. Use the context to resolve nested types.

    - Returns: A `GraphQLOutputType` describing the Reference to the Type..
    */
    static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType

    /**
    - Warning: never call this method directly. Always use: `context.resolve(type: ...)`

    Creates the Definition that will be used from GraphQL

    - Parameter context: Resolution Context where all the type relationships are stored. Use the context to resolve nested types.

    - Returns: A `GraphQLOutputType` describing this Type..
    */
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType

    /**
    Resolves the value that can be outputed to GraphQL

    - Parameters:
     - source: Parent of this type
     - arguments: Arguments given to the parent field
     - context; Context, containing additional runtime data about the resuts. You may also include additional information here for other nested types to use
     - eventLoop; Event Loop Group that can be used for creating futures

    - Returns: A Future with a value that can be evaluated by GraphQL.
    */
    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Future<Any?>
}

extension OutputResolvable {

    static func additionalGraphqlArguments(using context: inout Resolution.Context) throws -> [String : GraphQLArgument] {
        return try additionalArguments
            .mapValues { try context.resolve(type: $0) }
            .mapValues { GraphQLArgument(type: $0) }
    }

}
