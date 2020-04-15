
import Foundation
import GraphQL
import NIO
import ContextKit

public protocol GraphQLEnum: OutputResolvable, InputResolvable, ConcreteResolvable {
    static func cases(using context: inout Resolution.Context) throws -> [String : Map]
}

extension GraphQLEnum where Self: CaseIterable & RawRepresentable, RawValue == String  {

    public static func cases(using context: inout Resolution.Context) throws -> [String : Map] {
        let keysAndValues = try allCases.map { ($0.rawValue, try $0.map()) }
        return Dictionary(uniqueKeysWithValues: keysAndValues).compactMapValues { $0 }
    }

}

extension GraphQLEnum {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    static func resolveEnum(using context: inout Resolution.Context) throws -> GraphQLEnumType {
        let keysAndValues = try cases(using: &context).map { ($0.key.upperCamelized, GraphQLEnumValue(value: $0.value)) }
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

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(self)
    }

}
