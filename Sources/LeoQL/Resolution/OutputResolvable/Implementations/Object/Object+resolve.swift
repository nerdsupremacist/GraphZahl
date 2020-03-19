
import Foundation
import GraphQL
import Runtime

extension Object {

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let info = try typeInfo(of: Self.self)
        
        context.append(output: GraphQLNonNull(GraphQLTypeReference(concreteTypeName)), as: concreteTypeName)

        let propertyMap = Dictionary(uniqueKeysWithValues: info.properties.map { ($0.name.deleting(prefix: "_"), $0) })
        let properties = try propertyMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let methodMap = Dictionary(uniqueKeysWithValues: info.methods.map { ($0.methodName, $0) })
        let methods = try methodMap.compactMapValues { try $0.resolve(for: Self.self, using: &context) }

        let fields = properties.merging(methods) { $1 }
        let type = try GraphQLObjectType(name: concreteTypeName, fields: fields)

        return type
    }
    
}
