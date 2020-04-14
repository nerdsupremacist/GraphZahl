
import Foundation
import Runtime

private var keyPaths = [Int : [String : PropertyInfo]]()

public protocol KeyPathListable { }

extension KeyPathListable {

    subscript<T>(checkedMirrorDescendant key: String) -> T {
        get {
            return try! keyPaths[unsafeBitCast(Self.self, to: Int.self)]![key]!.get(from: self)
        }
        set {
            try! keyPaths[unsafeBitCast(Self.self, to: Int.self)]![key]!.set(value: newValue, on: &self)
        }
    }

}

extension KeyPathListable {

    static func resolve<T>() throws -> [String : KeyPath<Self, T>] {
        let properties = try keyPaths.getOrPut(unsafeBitCast(Self.self, to: Int.self)) {
            let keysAndValues = try typeInfo(of: Self.self, .properties).map { ($0.name, $0) }
            return Dictionary(keysAndValues) { $1 }
        }

        // TODO: If T is Any or a protocol, we should allow other types as well
        return properties
            .filter { $0.value.type == T.self }
            .mapValues { \Self.[checkedMirrorDescendant: $0.name] }
    }

}
