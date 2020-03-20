
import Foundation
import GraphQL

public enum ScalarTypeError: Error {
    case unexpectedValue(ScalarValue, expected: ScalarType)
    case valueFailedInnerTypeConstraints(ScalarValue, forType: GraphQLScalar.Type)
    case valueNotScalar(Map)
}
