
import Foundation
import GraphQL
import Runtime

extension GraphQLObject {

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let (typeProperties, typeMethods, inheritance) = try typeInfo(of: Self.self, .properties, .methods, .inheritance)

        let gettersThatShouldBeIgnored = Set(typeProperties.filter { $0.type is CustomGraphQLProperty.Type }.map { $0.name.deleting(prefix: "_") })
        let propertyResults = try typeProperties.compactMap { try $0.resolve(for: Self.self, using: &context) }
        let properties = propertyResults.reduce([:]) { dictionary, result in
            return dictionary.merging(result.fieldMap) { first, _ in first }
        }

        let methodMap = Dictionary(typeMethods.map { ($0.methodName.deleting(prefix: "$"), $0) }) { first, _ in first }
        let methods = try methodMap.filter { !gettersThatShouldBeIgnored.contains($0.key) }.compactMapValues { try $0.resolve(for: Self.self, using: &context) }
        let fields = properties.merging(methods) { $1 }

        let interfaces = try inheritance
            .compactMap { $0 as? GraphQLObject.Type }
            .map { try context.resolveInterface(object: $0) } + propertyResults.flatMap(\.interfaces)

        let type = try GraphQLObjectType(name: concreteTypeName, fields: fields, interfaces: interfaces.distinct(by: \.name)) { value, _, _ in value is Self }

        return type
    }
    
}

extension Sequence {

    fileprivate func distinct<T : Hashable>(by id: (Element) -> T) -> [Element] {
        var set = Set<T>()
        var result = [Element]()
        for element in self {
            let elementId = id(element)
            if !set.contains(elementId) {
                set.formUnion([elementId])
                result.append(element)
            }
        }
        return result
    }

}
