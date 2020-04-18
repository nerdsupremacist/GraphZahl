
import Foundation

/**
 # EdgeProtocol

 Describes an Edge during Paging. An Edge contains the Node that is the value, the cursor of that value, and any additional information.

 ## Note

 An Edge is `OutputResolvable`. Any implementations of it, should be including the `node` and the `cursor` in the output.
 It is best if you delegate the implementation of `OutputResolvable` to `GraphQLObject` instead.
 */
public protocol EdgeProtocol: OutputResolvable {
    associatedtype Node: OutputResolvable & ConcreteResolvable

    /**
     Value of the Edge
     */
    var node: Node? { get }

    /**
     Cursor to this value. Used to get a page before or after this value
     */
    var cursor: String { get }
}
