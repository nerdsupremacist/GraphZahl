
import Foundation
import GraphQL

/**
 # Concrete Resolvable

 A Resolvable that is required to have a type name
 */
public protocol ConcreteResolvable: Resolvable {
    /**
     Name that should be used in GraphQL
     */
    static var concreteTypeName: String { get }
}

extension ConcreteResolvable {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var typeName: String? {
        return concreteTypeName
    }

    public static var concreteTypeName: String {
        return String(describing: Self.self)
    }

}

extension ConcreteResolvable where Self: OutputResolvable {

    /**
    - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
    */
    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLTypeReference(concreteTypeName))
    }

}
