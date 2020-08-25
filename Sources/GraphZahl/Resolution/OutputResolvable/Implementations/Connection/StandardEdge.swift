
import Foundation
import NIO
import GraphQL
import ContextKit

/**
 # Standard Edge

 This is the default implementation of an Edge. It has the node and cursor and nothing else.
*/
public struct StandardEdge<Node: OutputResolvable & ConcreteResolvable>: EdgeProtocol, ConcreteResolvable {
    public let node: Node?
    public let cursor: String

    /**
    Initializer for an Edge

    - Parameters:
        - node: Value the edge is pointing to
        - cursor: Cursor for this Value
    */
    public init(node: Node?, cursor: String) {
        self.node = node
        self.cursor = cursor
    }
}

extension StandardEdge {
    public static var concreteTypeName: String {
        return "\(Node.concreteTypeName)Edge"
    }
}

extension StandardEdge {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Node?.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let fields = [
            "node" : GraphQLField(type: try context.reference(for: Optional<Node>.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return try (receiver as! StandardEdge<Node>)
                    .node
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext, eventLoop: eventLoop)
                    .convert(eventLoopGroup: eventLoop)
            },
            "cursor" : GraphQLField(type: try context.reference(for: String.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return try (receiver as! StandardEdge<Node>)
                    .cursor
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext,eventLoop: eventLoop)
                    .convert(eventLoopGroup: eventLoop)
            },
        ]

        return GraphQLNonNull(
            try GraphQLObjectType(name: concreteTypeName, fields: fields)
        )
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Output {
        return .unsafeReceiver(self)
    }

}
