
import Foundation
import GraphQL

public enum ScalarTypeError: Error {
    case unexpectedValue(ScalarValue, expected: ScalarType)
    case valueFailedInnerTypeConstraints(ScalarValue, forType: Scalar.Type)
    case valueNotScalar(Map)
}
