
import Foundation
import GraphQL

extension UUID: GraphQLScalar {
    
    public static var concreteTypeName: String {
        return "ID"
    }

    public init(scalar: ScalarValue) throws {
        guard let uuid = UUID(uuidString: try scalar.string()) else { throw ScalarTypeError.valueFailedInnerTypeConstraints(scalar, forType: UUID.self) }
        self = uuid
    }

    public func encodeScalar() throws -> ScalarValue {
        return .string(uuidString)
    }

    public static func resolve() throws -> GraphQLScalarType {
        return GraphQLID
    }

}
