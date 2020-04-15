
import Foundation
import GraphQL

extension RawRepresentable where Self: ValueResolvable, RawValue: ValueResolvable {

    public func map() throws -> Map? {
        return try rawValue.map()
    }

}

extension RawRepresentable where Self: InputResolvable, RawValue: InputResolvable {
    public static func create(from map: Map) throws -> Self {
        let rawValue = try RawValue.create(from: map)
        guard let value = Self(rawValue: rawValue) else {
            throw InputResolutionError.cannotInstantiateTypeFromRawValue(Self.self, rawValue: rawValue)
        }
        return value
    }
}
