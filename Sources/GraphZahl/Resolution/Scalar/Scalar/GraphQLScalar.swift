
import Foundation
import GraphQL

public protocol GraphQLScalar: OutputResolvable, InputResolvable, ConcreteResolvable, ValueResolvable, KeyPathListable {
    static func resolve() throws -> GraphQLScalarType

    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}

extension GraphQLScalar {

    public static func resolve() throws -> GraphQLScalarType {
        return try GraphQLScalarType(name: concreteTypeName,
                                     serialize: { $0 as! Map },
                                     parseValue: { $0 },
                                     parseLiteral: { try Self.parseLiteral(literal: $0) })
    }

    public func map() throws -> Map {
        return try encodeScalar().graphql()
    }
    
    static func parseLiteral(literal: Value) throws -> Map {
        switch literal {
        case is StringValue:
            return try GraphQLString.parseLiteral(valueAST: literal)
        case is IntValue:
            return try GraphQLInt.parseLiteral(valueAST: literal)
        case is FloatValue:
            return try GraphQLFloat.parseLiteral(valueAST: literal)
        case is BooleanValue:
            return try GraphQLBoolean.parseLiteral(valueAST: literal)
        default:
            return .null
        }
    }

}
