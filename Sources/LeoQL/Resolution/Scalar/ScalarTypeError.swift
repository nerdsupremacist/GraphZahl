
import Foundation
import GraphQL

public enum ScalarTypeError: Error {
    case unexpectedValue(ScalarValue, expected: ScalarType)
    case valueNotScalar(Map)
}
