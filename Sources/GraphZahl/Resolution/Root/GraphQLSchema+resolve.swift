
import Foundation
import GraphQL
import NIO
import ContextKit

extension GraphQLSchema {

    static func resolve(viewerContext: ViewerContext?) throws -> GraphQL.GraphQLSchema {
        var context = Resolution.Context.empty(viewerContextType: ViewerContext.self, viewerContext: viewerContext)

        var query = try context.resolve(object: Query.self)

        let mutation: GraphQLObjectType?
        if Mutation.self != None.self {
            mutation = try context.resolve(object: Mutation.self)
        } else {
            mutation = nil
        }

        let types = try context.types().filter { $0.name != query.name }

        if !context.nodeTypes.isEmpty {
            let newFields = [
                "node" : nodeField(types: context.nodeTypes)
            ]

            let fields = query.fields.mapValues { definition -> GraphQLField in
                let args = Dictionary(uniqueKeysWithValues: definition.args.map { argDefinition in
                    return (
                        argDefinition.name,
                        GraphQLArgument(type: argDefinition.type,
                                        description: argDefinition.description,
                                        defaultValue: argDefinition.defaultValue)
                    )
                })
                return GraphQLField(type: definition.type,
                                    description: definition.description,
                                    deprecationReason: definition.deprecationReason,
                                    args: args,
                                    resolve: definition.resolve)
            }
            .merging(newFields) { $1 }

            query = try GraphQLObjectType(name: query.name,
                                          description: query.description,
                                          fields: fields,
                                          interfaces: query.interfaces,
                                          isTypeOf: query.isTypeOf)
        }

        return try GraphQL.GraphQLSchema(query: query,
                                         mutation: mutation,
                                         subscription: nil,
                                         types: types + [query],
                                         directives: [])
    }

}

private func nodeField(types: [Node.Type]) -> GraphQLField {
    return GraphQLField(
        type: GraphQLNode,
        description: "Fetches an object given its ID",
        deprecationReason: nil,
        args: ["id" : GraphQLArgument(type: GraphQLNonNull(GraphQLID), description: "The ID of an object")]
    ) { (_, args, context, eventLoop, _) -> Future<Any?> in
        let id = try args.get("id").stringValue(converting: true)
        return findNode(id: id, types: types, context: context as! MutableContext, eventLoop: eventLoop).map { $0 }
    }
}

private func findNode<C : Collection>(
    id: String,
    types: C,
    context: MutableContext,
    eventLoop: EventLoopGroup
) -> EventLoopFuture<Node?> where C.Element == Node.Type {
    guard let type = types.first else {
        return eventLoop.next().makeSucceededFuture(nil)
    }

    return type
        .find(id: id, context: context, eventLoop: eventLoop)
        .flatMap { node in
            if let node = node {
                return eventLoop.next().makeSucceededFuture(node)
            }

            return findNode(id: id, types: types.dropFirst(), context: context, eventLoop: eventLoop)
        }
}
