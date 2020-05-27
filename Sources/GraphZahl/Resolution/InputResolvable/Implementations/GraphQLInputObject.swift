
import Foundation
import GraphQL
import NIO
import Runtime

private var propertiesForType = [Int : [String : PropertyInfo]]()

/**
 # GraphQLInputObject

 A GraphQL Input Object is a Struct that can be used as an input for a method.

 ## Example

 If want to provide an API for sorting search results. We can create a struct for those options.

 ```swift
 enum Order: String, CaseIterable, GraphQLEnum {
    case ascending
    case descending
 }

 struct SortOptions: GraphQLInputType {
    let field: KeyPath<SearchResult, Int>
    let order: Order
 }

 class Query: QueryType {
    func search(term: String, sortOptions: SortOptions?) -> [SearchResult] {
        ...
    }
 }
 ```

 ## Note

 Input types can be useful to group arguments. We can also use them to group arguments that should always be provided together. Like in our search example, we don't need the user to specify how to sort. But when the user wants the Results sorted by a field, we need to know if they should be sorted in an ascending or descending order. That's why the Input Object makes sense in this scenario.

 ## Details

 - A GraphQL Input Object is Input Resolvable and can be used in any method that should be available in GraphQL
 - An Input Object has to be a struct. If it's not a struct, an error will be thrown.
 - All the properties in the struct have to be Input Resolvable as well. Otherwise an error will be thrown.
 */
public protocol GraphQLInputObject: InputResolvable, ConcreteResolvable, ValueResolvable, KeyPathListable { }

extension GraphQLInputObject {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
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

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
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

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
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
