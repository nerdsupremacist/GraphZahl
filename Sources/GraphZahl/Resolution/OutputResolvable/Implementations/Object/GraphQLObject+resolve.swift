
import Foundation
import GraphQL
import Runtime

extension GraphQLObject {

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let (typeProperties, typeMethods, inheritance) = try typeInfo(of: Self.self, .properties, .methods, .inheritance)

        let propertyResults = try typeProperties.compactMap { try $0.resolve(for: Self.self, using: &context) }
        let properties = propertyResults.reduce([:]) { dictionary, result in
            return dictionary.merging(result.fieldMap) { first, _ in first }
        }

        let methodMap = Dictionary(typeMethods.map { ($0.methodName.deleting(prefix: "$"), $0) }) { first, _ in first }
        let methods = try methodMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let fields = properties.merging(methods) { property, method in
            guard method.args.isEmpty else { return method }

            if property.type.debugDescription == method.type.debugDescription {
                return property
            }

            if property.args.isEmpty {
                return method
            } else {
                return property
            }
        }

        let interfaces = try inheritance
            .compactMap { $0 as? GraphQLObject.Type }
            .map { try context.resolveInterface(object: $0) } + propertyResults.compactMap(\.interface)

        let type = try GraphQLObjectType(name: concreteTypeName, fields: fields, interfaces: interfaces) { value, _, _ in value is Self }

        return type
    }
    
}
