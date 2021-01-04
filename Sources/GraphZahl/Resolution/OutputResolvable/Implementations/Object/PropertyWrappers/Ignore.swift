
import Foundation
import Runtime

@propertyWrapper
public struct Ignore<T : OutputResolvable> {
    public var wrappedValue: T

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
}

extension Ignore: CustomGraphQLProperty {

    static func resolve(with property: PropertyInfo,
                        for receiverType: GraphQLObject.Type,
                        using context: inout Resolution.Context) throws -> PropertyResult {
        return .ignore
    }

}

extension Ignore: Encodable where T: Encodable {

    public func encode(to encoder: Encoder) throws {
        try wrappedValue.encode(to: encoder)
    }

}

extension Ignore: Decodable where T: Decodable {

    public init(from decoder: Decoder) throws {
        self.init(wrappedValue: try T(from: decoder))
    }

}
