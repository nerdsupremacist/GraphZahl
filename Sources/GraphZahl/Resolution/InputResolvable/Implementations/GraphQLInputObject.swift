
import Foundation
import GraphQL
import NIO
import Runtime

public protocol GraphQLInputObject: InputResolvable, ConcreteResolvable, KeyPathListable { }

extension GraphQLInputObject {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        let (kind, properties) = try typeInfo(of: Self.self, .kind, .properties)

        guard kind == .struct else { throw Resolution.Error.inputObjectIsNotAStruct(type: Self.self) }

        let propertyMap = Dictionary(properties.map { ($0.name.deleting(prefix: "_"), $0) }) { first, _ in first }
        let fields = try propertyMap.mapValues { property -> InputObjectField in
            guard let type = property.type as? InputResolvable.Type else {
                throw Resolution.Error.invalidPropertyInInputObject(name: property.name, type: property.type, ownerType: Self.self)
            }
            return InputObjectField(type: try context.resolve(type: type))
        }

        return GraphQLNonNull(try GraphQLInputObjectType(name: concreteTypeName, fields: fields))
    }

    public init(map: Map) throws {
        let dictionary = try map.dictionaryValue()
        self = try createInstance { property in
            guard let type = property.type as? InputResolvable.Type else {
                throw Resolution.Error.invalidPropertyInInputObject(name: property.name, type: property.type, ownerType: Self.self)
            }
            let value = dictionary[property.name.deleting(prefix: "_")] ?? .null
            return try type.create(from: value)
        }
    }

    public func map() throws -> Map {
        let properties = try typeInfo(of: Self.self, .properties)
        let propertyMap = Dictionary(properties.map { ($0.name.deleting(prefix: "_"), $0) }) { first, _ in first }
        let dictionary = try propertyMap.mapValues { property -> Map in
            guard let value = try property.get(from: self) as? ValueResolvable else {
                throw Resolution.Error.invalidPropertyInInputObject(name: property.name, type: property.type, ownerType: Self.self)
            }
            return try value.map()
        }
        return .dictionary(dictionary)
    }

}
