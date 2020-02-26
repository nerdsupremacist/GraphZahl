
import Foundation
import GraphQL
import NIO

public enum ScalarType {
    case string
    case float
    case int
    case bool
    case id
}

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

public enum ID {
    case string(String)
    case int(Int)
}

public enum ScalarTypeError: Error {
    case unexpectedValue(ScalarValue, expected: ScalarType)
    case valueNotScalar(Map)
}

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

public protocol Scalar: OutputResolvable, InputResolvable {
    init(scalar: ScalarValue) throws
    func encodeScalar() throws -> ScalarValue
}

extension String: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.string()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .string(self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLString
        return GraphQLNonNull(GraphQLString)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context += GraphQLString
        return GraphQLNonNull(GraphQLString)
    }

}

extension Int: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.int()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLInt
        return GraphQLNonNull(GraphQLInt)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context += GraphQLInt
        return GraphQLNonNull(GraphQLInt)
    }

}

extension Float: Scalar {

    public init(scalar: ScalarValue) throws {
        self = Float(try scalar.float())
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

}

extension Double: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.float()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .number(Number(self))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context += GraphQLFloat
        return GraphQLNonNull(GraphQLFloat)
    }

}

extension Bool: Scalar {

    public init(scalar: ScalarValue) throws {
        self = try scalar.bool()
    }

    public func encodeScalar() throws -> ScalarValue {
        return .bool(self)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        context += GraphQLBoolean
        return GraphQLNonNull(GraphQLBoolean)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        context += GraphQLBoolean
        return GraphQLNonNull(GraphQLBoolean)
    }

}

extension Scalar {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let type = try GraphQLScalarType(name: typeName) { value in
            guard let value = value as? Self else { fatalError() }
            return try value.encodeScalar().graphql()
        }
        context += type
        return GraphQLNonNull(type)
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        let type = try GraphQLScalarType(name: typeName) { value in
            guard let value = value as? Self else { fatalError() }
            return try value.encodeScalar().graphql()
        }
        context += type
        return GraphQLNonNull(type)
    }

}

extension Scalar {

    public init(map: Map) throws {
        try self.init(scalar: try ScalarValue(map: map))
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().newSucceededFuture(result: self)
    }

}

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
