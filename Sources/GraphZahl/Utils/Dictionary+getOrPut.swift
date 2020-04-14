
import Foundation

extension Dictionary {

    mutating func getOrPut(_ key: Key, default defaultValue: @autoclosure () throws -> Value) rethrows -> Value {
        return try getOrPut(key) { try defaultValue() }
    }

    mutating func getOrPut(_ key: Key, default defaultValue: () throws -> Value) rethrows -> Value {
        guard let value = self[key] else {
            let value = try defaultValue()
            self[key] = value
            return value
        }
        return value
    }

}
