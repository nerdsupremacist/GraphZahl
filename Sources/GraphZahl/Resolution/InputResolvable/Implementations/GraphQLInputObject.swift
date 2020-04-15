
import Foundation
import GraphQL
import NIO
import Runtime

private var propertiesForType = [Int : [String : PropertyInfo]]()

public protocol GraphQLInputObject: InputResolvable, ConcreteResolvable, ValueResolvable, KeyPathListable { }

extension GraphQLInputObject {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        let kind = try typeInfo(of: Self.self, .kind)
        guard kind == .struct else { throw Resolution.Error.inputObjectIsNotAStruct(type: Self.self) }

        let fields = try properties().mapValues { property -> InputObjectField in
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

    public func map() throws -> Map? {
        let dictionary = try Self.properties().compactMapValues { property -> Map? in
            guard let value = try property.get(from: self) as? ValueResolvable else {
                throw Resolution.Error.invalidPropertyInInputObject(name: property.name, type: property.type, ownerType: Self.self)
            }
            return try value.map()
        }
        return .dictionary(dictionary)
    }

    private static func properties() throws -> [String : PropertyInfo] {
        return try propertiesForType.getOrPut(unsafeBitCast(Self.self, to: Int.self)) {
            let properties = try typeInfo(of: Self.self, .properties)
            return Dictionary(properties.map { ($0.name.deleting(prefix: "_"), $0) }) { first, _ in first }
        }
    }

}
