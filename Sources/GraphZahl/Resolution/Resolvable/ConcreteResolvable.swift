
import Foundation
import GraphQL

public protocol ConcreteResolvable: Resolvable {
    static var concreteTypeName: String { get }
}

extension ConcreteResolvable {

    public static var typeName: String? {
        return concreteTypeName
    }

    public static var concreteTypeName: String {
        return String(describing: Self.self)
    }

}

extension ConcreteResolvable where Self: OutputResolvable {

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLTypeReference(concreteTypeName))
    }

}
