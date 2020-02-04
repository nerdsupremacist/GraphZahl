
import Foundation
import GraphQL

enum ScalarType {
    case string
    case float
    case int
    case bool
    case id
}

enum ScalarValue {
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

enum ID {
    case string(String)
    case int(Int)
}

enum ScalarTypeError: Error {
    case unexpectedValue(ScalarValue, expected: ScalarType)
}

extension ScalarValue {

    func string() throws -> String {
        guard case .string(let string) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .string) }
        return string
    }

    func int() throws -> Int {
        guard case .number(let int) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .int) }
        return int.intValue
    }

    func float() throws -> Double {
        guard case .number(let float) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .float) }
        return float.doubleValue
    }

    func bool() throws -> Bool {
        guard case .bool(let bool) = self else { throw ScalarTypeError.unexpectedValue(self, expected: .bool) }
        return bool
    }

    func id() throws -> ID {
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

protocol Scalar: Resolvable {
    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}

extension String: Scalar {

    init(scalar: ScalarValue) throws {
        self = try scalar.string()
    }

    func encodeScalar() throws -> ScalarValue {
        return .string(self)
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLString
        return GraphQLNonNull(GraphQLString)
    }

}

extension Int: Scalar {

    init(scalar: ScalarValue) throws {
        self = try scalar.int()
    }

    func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLInt
        return GraphQLNonNull(GraphQLInt)
    }

}

extension Float: Scalar {

    init(scalar: ScalarValue) throws {
        self = Float(try scalar.float())
    }

    func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

}

extension Double: Scalar {

    init(scalar: ScalarValue) throws {
        self = try scalar.float()
    }

    func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

}

extension Bool: Scalar {

    init(scalar: ScalarValue) throws {
        self = try scalar.bool()
    }

    func encodeScalar() throws -> ScalarValue {
        return .bool(self)
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLBoolean
        return GraphQLNonNull(GraphQLBoolean)
    }

}

extension Scalar {

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = String(describing: Self.self)
        let type = try GraphQLScalarType(name: name) { value in
            guard let value = value as? Self else { fatalError() }
            return try value.encodeScalar().graphql()
        }
        context += type
        return GraphQLNonNull(type)
    }

}
