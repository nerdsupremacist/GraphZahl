
import Foundation

protocol Resolvable {
    associatedtype Resolved
    static func resolve(context: inout Resolution.Context) -> Resolved
}
