
import Foundation
import GraphQL

/**
 # Conditional Conformance

 All raw representables of values that can be translated to a GraphQL Value, can themselves be translated to a GraphQL Value
 */
extension RawRepresentable where Self: ValueResolvable, RawValue: ValueResolvable {

    public func map() throws -> Map {
        return try rawValue.map()
    }

}

/**
 # Conditional Conformance

 All raw representables of values that are GraphQL Inputs, can be Inputs themselves
 */
extension RawRepresentable where Self: InputResolvable, RawValue: InputResolvable {
    public static func create(from map: Map) throws -> Self {
        let rawValue = try RawValue.create(from: map)
        guard let value = Self(rawValue: rawValue) else {
            throw InputResolutionError.cannotInstantiateTypeFromRawValue(Self.self, rawValue: rawValue)
        }
        return value
    }
}
