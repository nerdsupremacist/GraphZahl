
import Foundation
import GraphQL

public protocol ValueResolvable: Resolvable {
    func map() throws -> Map
}
