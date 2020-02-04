
import Foundation
import GraphQL
import Runtime

public protocol Object : Resolvable { }

extension Never : Object { }

extension Object {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = String(describing: Self.self)

        if let type = context.types[name] as? GraphQLNullableType {
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
        let properties: [String : GraphQLField] = try propertyMap
            .compactMapValues { propertyInfo in
                if propertyInfo.name == "id" {
                    return GraphQLField(type: GraphQLID) { (object, args, other, info) -> Any? in
                        return nil
                    }
                }

                guard let type = propertyInfo.type as? Resolvable.Type else { return nil }

                return GraphQLField(type: try type.resolve(using: &context)) { (object, args, other, info) -> Any? in
                    return nil
                }
            }

        let type = try GraphQLObjectType(name: info.name, fields: properties)

        context += type

        return type
    }

}


extension GraphQLTypeReference: GraphQLNamedType { }
