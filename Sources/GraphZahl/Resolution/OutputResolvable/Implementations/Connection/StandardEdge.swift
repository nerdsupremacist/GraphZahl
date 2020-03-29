
import Foundation
import NIO
import GraphQL
import ContextKit

public struct StandardEdge<Node: OutputResolvable & ConcreteResolvable>: EdgeProtocol, ConcreteResolvable {
    public let node: Node?
    public let cursor: String

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
            },
            "cursor" : GraphQLField(type: try context.reference(for: String.self)) { (receiver, args, context, eventLoop, _) -> Future<Any?> in
                return (receiver as! StandardEdge<Node>)
                    .cursor
                    .resolve(source: receiver, arguments: try args.dictionaryValue(), context: context as! MutableContext,eventLoop: eventLoop)
            },
        ]

        return GraphQLNonNull(
            try GraphQLObjectType(name: concreteTypeName, fields: fields)
        )
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        return eventLoop.next().makeSucceededFuture(self)
    }

}
