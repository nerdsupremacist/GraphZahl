
import Foundation
import GraphQL

public enum ScalarValue {
    case string(String)
    case number(Number)
    case bool(Bool)

    func graphql() throws -> Map {
        switch self {
        case .string(let string):
            return .string(string)
        case .number(let number):
            return .number(number)
        case .bool(let bool):
            return .bool(bool)
        }
    }
}
