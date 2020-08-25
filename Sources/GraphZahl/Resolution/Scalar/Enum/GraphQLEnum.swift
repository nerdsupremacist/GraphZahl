
import Foundation
import GraphQL
import NIO
import ContextKit

public protocol GraphQLEnum: OutputResolvable, InputResolvable, ConcreteResolvable, ValueResolvable {
    static func cases(using context: inout Resolution.Context) throws -> [String : Self]
}

extension GraphQLEnum where Self: CaseIterable & RawRepresentable, RawValue == String  {

    public static func cases(using context: inout Resolution.Context) throws -> [String : Self] {
        return Dictionary(uniqueKeysWithValues: allCases.map { ($0.rawValue, $0) })
    }

}

extension GraphQLEnum {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    static func resolveEnum(using context: inout Resolution.Context) throws -> GraphQLEnumType {
        let keysAndValues = try cases(using: &context).map { ($0.key.upperCamelized, GraphQLEnumValue(value: try $0.value.map())) }
        let values = Dictionary(uniqueKeysWithValues: keysAndValues)
        return try GraphQL.GraphQLEnumType(name: concreteTypeName, values: values)
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLTypeReference(concreteTypeName))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(try resolveEnum(using: &context))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(try resolveEnum(using: &context))
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Output {
        return .map(try map())
    }

}
