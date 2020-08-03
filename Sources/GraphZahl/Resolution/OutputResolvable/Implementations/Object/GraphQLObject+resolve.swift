
import Foundation
import GraphQL
import Runtime

extension GraphQLObject {

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let (typeProperties, typeMethods, inheritance) = try typeInfo(of: Self.self, .properties, .methods, .inheritance)
        
        let propertyMap = Dictionary(typeProperties.map { ($0.name.deleting(prefix: "_"), $0) }) { first, _ in first }
        let properties = try propertyMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let methodMap = Dictionary(typeMethods.map { ($0.methodName.deleting(prefix: "$"), $0) }) { first, _ in first }
        let methods = try methodMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let fields = properties.merging(methods) { property, method in
            guard method.args.isEmpty,
                let propertyType = property.type as? GraphQLNamedType,
                let methodType = method.type as? GraphQLNamedType,
                propertyType.name == methodType.name else { return method }

            return property
        }

        let interfaces = try inheritance
            .compactMap { $0 as? GraphQLObject.Type }
            .map { try context.resolveInterface(object: $0) }

        let type = try GraphQLObjectType(name: concreteTypeName, fields: fields, interfaces: interfaces) { value, _, _ in value is Self }

        return type
    }
    
}
