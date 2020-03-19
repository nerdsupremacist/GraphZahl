
import Foundation
import GraphQL
import NIO

public protocol GraphQLEnum: OutputResolvable, InputResolvable, ConcreteResolvable, CaseIterable, RawRepresentable where RawValue == String { }

extension GraphQLEnum {

    static func resolveEnum(using context: inout Resolution.Context) throws -> GraphQLEnumType {
        let values = try Dictionary(uniqueKeysWithValues: allCases.map { ($0.rawValue.upperCamelized, $0.rawValue) })
            .mapValues { GraphQLEnumValue(value: try $0.encodeScalar().graphql()) }

        return try GraphQL.GraphQLEnumType(name: concreteTypeName, values: values)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(try resolveEnum(using: &context))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(try resolveEnum(using: &context))
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(self)
    }

}
