
import Foundation

public protocol EdgeProtocol: OutputResolvable {
    associatedtype Node: OutputResolvable & ConcreteResolvable

    var node: Node? { get }
    var cursor: String { get }
}
