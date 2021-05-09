
import Foundation
import NIO
import ContextKit
import GraphQL

public protocol Node: GraphQLObject {
    func id(context: MutableContext, eventLoop: EventLoopGroup) -> EventLoopFuture<String>

    static func find(id: String, context: MutableContext, eventLoop: EventLoopGroup ) -> EventLoopFuture<Node?>
}

let GraphQLNodeIdField: GraphQLField = {
    return GraphQLField(type: GraphQLNonNull(GraphQLID),
                        description: "The id of the object",
                        deprecationReason: nil,
                        args: [:]) { (source, _, context, eventLoop, _) -> Future<Any?> in

        return (source as! Node).id(context: context as! MutableContext, eventLoop: eventLoop).map { $0 }
    }
}()

let GraphQLNode: GraphQLInterfaceType = {
    let fields = [
        "id" : GraphQLNodeIdField
    ]
    return try! GraphQLInterfaceType(name: "Node", fields: fields, resolveType: nil)
}()
