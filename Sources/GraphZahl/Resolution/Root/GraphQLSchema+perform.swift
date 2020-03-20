
import Foundation
import GraphQL
import NIO

private let defaultEventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
private var schemaCache = [String : GraphQL.GraphQLSchema]()

extension GraphQLSchema {

    public static func perform(request: String,
                               viewerContext: ViewerContext,
                               eventLoopGroup: EventLoopGroup? = nil) throws -> Future<GraphQLResult> {

        let schema = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve())
        return try graphql(schema: schema,
                           request: request,
                           rootValue: viewerContext,
                           eventLoopGroup: eventLoopGroup ?? defaultEventLoopGroup)
    }

}

extension GraphQLSchema where ViewerContext == Void {

    public static func perform(request: String) throws -> Future<GraphQLResult> {
        return try perform(request: request, viewerContext: ())
    }

}
