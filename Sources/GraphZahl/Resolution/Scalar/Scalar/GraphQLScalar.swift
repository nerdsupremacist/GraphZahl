
import Foundation
import GraphQL

public protocol GraphQLScalar: OutputResolvable, InputResolvable, ConcreteResolvable, ValueResolvable, KeyPathListable {
    static func resolve() throws -> GraphQLScalarType

    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}

extension GraphQLScalar {

    public static func resolve() throws -> GraphQLScalarType {
        return try GraphQLScalarType(name: concreteTypeName) { $0 as! Map }
    }

    public func map() throws -> Map {
        return try encodeScalar().graphql()
    }

}
