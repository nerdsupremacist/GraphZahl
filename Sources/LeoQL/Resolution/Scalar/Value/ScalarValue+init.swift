
import Foundation
import GraphQL

extension ScalarValue {

    init(map: Map) throws {
        switch map {
        case .null, .array, .dictionary:
            throw ScalarTypeError.valueNotScalar(map)
        case .bool(let bool):
            self = .bool(bool)
        case .number(let number):
            self = .number(number)
        case .string(let string):
            self = .string(string)
        }
    }

}
