
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

extension KeyPath: ValueResolvable where Root: ConcreteResolvable & KeyPathListable {
    public func map() throws -> Map {
        return try "\(self)".map()
    }
}

extension KeyPath: InputResolvable where Root: ConcreteResolvable & KeyPathListable {

    public static func create(from map: Map) throws -> Self {
        let name = try map.stringValue()
        return (\Root.[checkedMirrorDescendant: name] as WritableKeyPath<Root, Value>) as! Self
    }

}

extension KeyPath: OutputResolvable where Root: ConcreteResolvable & KeyPathListable { }

extension KeyPath: GraphQLEnum where Root: ConcreteResolvable & KeyPathListable {
    public static func cases(using context: inout Resolution.Context) throws -> [String : Map] {
        let keyPaths: [String : KeyPath<Root, Value>] = try Root.resolve()

        let cases = try keyPaths
            .map { ($0.key, try $0.key.map()) }

        return Dictionary(cases) { $1 }
    }
}
