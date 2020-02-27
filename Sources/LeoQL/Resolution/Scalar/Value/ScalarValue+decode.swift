
import Foundation

extension ScalarValue {

    public func string() throws -> String {
        guard case .string(let string) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .string) }
        return string
    }

    public func int() throws -> Int {
        guard case .number(let int) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .int) }
        return int.intValue
    }

    public func float() throws -> Double {
        guard case .number(let float) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .float) }
        return float.doubleValue
    }

    public func bool() throws -> Bool {
        guard case .bool(let bool) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .bool) }
        return bool
    }

    public func id() throws -> ID {
        switch self {
        case .string(let string):
            return .string(string)
        case .number(let int):
            return .int(int.intValue)
        case .bool:
            throw ScalarTypeError.unexpectedValue(self, expected: .id)
        }
    }

}
