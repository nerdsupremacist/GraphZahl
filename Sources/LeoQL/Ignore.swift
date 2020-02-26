
import Foundation

@propertyWrapper
public struct Ignore<T: OutputResolvable> {
    public var wrappedValue: T

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
}

extension Ignore: Encodable where T: Encodable { }

extension Ignore: Decodable where T: Decodable { }
