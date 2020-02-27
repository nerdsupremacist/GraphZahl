
import Foundation
import GraphQL
import Runtime
import NIO

public protocol Object : class, OutputResolvable { }

extension Object {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        if let type = context.types[typeName] as? GraphQLNullableType {
            return GraphQLNonNull(type)
        }

        return GraphQLNonNull(try resolveObject(using: &context))
    }

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let info = try typeInfo(of: Self.self)

        if let type = context.types[info.name] as? GraphQLObjectType {
            return type
        }

        context += GraphQLTypeReference(info.name)

        let propertyMap = Dictionary(uniqueKeysWithValues: info.properties.map { ($0.name, $0) })
        let properties = try propertyMap.compactMapValues { try $0.resolve(using: &context) }

        let methodMap = Dictionary(uniqueKeysWithValues: info.methods.map { ($0.methodName, $0) })
        let methods = try methodMap.compactMapValues { try $0.resolve(using: &context) }

        let fields = properties.merging(methods) { $1 }
        let type = try GraphQLObjectType(name: info.name, fields: fields)

        context += type

        return type
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().newSucceededFuture(result: self)
    }

}

extension GraphQLTypeReference: GraphQLNamedType { }

