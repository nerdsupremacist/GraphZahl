
import Foundation
import Runtime
import GraphQL
import ContextKit
import NIO

extension KeyPath: Resolvable where Root: ConcreteResolvable & KeyPathListable { }

extension KeyPath: ConcreteResolvable where Root: ConcreteResolvable & KeyPathListable {

    public static var concreteTypeName: String {
        return Root.concreteTypeName + "Field"
    }

}

extension KeyPath: InputResolvable where Root: ConcreteResolvable & KeyPathListable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        return GraphQLNonNull(try GraphQLEnumType(name: concreteTypeName, values: try cases(using: &context)))
    }

    public static func create(from map: Map) throws -> Self {
        let name = try map.stringValue()
        return (\Root.[checkedMirrorDescendant: name] as WritableKeyPath<Root, Value>) as! Self
    }

    private static func cases(using context: inout Resolution.Context) throws -> [String : GraphQLEnumValue] {
        let keyPaths: [String : KeyPath<Root, Value>] = try Root.resolve()

        let cases = try keyPaths
            .map { ($0.key.upperCamelized, try $0.key.map()) }

        return Dictionary(cases) { $1 }.mapValues { GraphQLEnumValue(value: $0) }
    }
}
