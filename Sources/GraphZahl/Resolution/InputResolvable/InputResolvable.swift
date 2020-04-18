
import Foundation
import GraphQL

/**
    - Attention: this is a low level API. Do not use this directly unless you know what you're doing.

    # InputResolvable

    Input Resolvable describes an Object that can be used as an Argument to a GraphQL Field.

    It means that for a method to be available in GraphQL, all the arguments have to conform to `InputResolvable`

    Input Resolvable Types are:
    - Scalars
    - Enums
    - Input Objects
    - Optionals and Arrays through Conditional Conformance
*/
public protocol InputResolvable: Resolvable {
    /**
     - Warning: never call this method directly. Always use: `context.resolve(type: ...)`

     Creates the Definition that will be used from GraphQL

     - Parameter context: Resolution Context where all the type relationships are stored. Use the context to resolve nested types.

     - Returns: A `GraphQLInputType` describing this Type..
     */
    static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType

    /**
     Instantiates this type from a GraphQL Value. Very similar to decodin with `init(from: Decoder)`

     - Parameter map: Object describing the value .

     - Returns: An instance of the Type

     ## Note

     This function is a static function instead of an initializer.
     The reason for that is that this protocol is often implemented in extensions of standard types.
     Since one of them is KeyPath<Root, Value>, which is a class type.
     This can't be an initializer, since required initializers can't be defined in an extension.
     */
    static func create(from map: Map) throws -> Self
}
