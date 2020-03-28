
import Foundation
import GraphQL
import Runtime

extension GraphQLObject {

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let (typeProperties, typeMethods) = try typeInfo(of: Self.self, .properties, .methods)
        
        context.append(type: GraphQLNonNull(GraphQLTypeReference(concreteTypeName)), as: concreteTypeName)

        let propertyMap = Dictionary(uniqueKeysWithValues: typeProperties.map { ($0.name.deleting(prefix: "_"), $0) })
        let properties = try propertyMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let methodMap = Dictionary(uniqueKeysWithValues: typeMethods.map { ($0.methodName, $0) })
        let methods = try methodMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let fields = properties.merging(methods) { $1 }
        let type = try GraphQLObjectType(name: concreteTypeName, fields: fields)

        return type
    }
    
}
