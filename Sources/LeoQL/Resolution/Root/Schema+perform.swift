
import Foundation
import GraphQL
import NIO

private let defaultEventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
private var schemaCache = [String : GraphQLSchema]()

extension Schema {

    public static func perform(request: String,
                               viewerContext: ViewerContext,
                               eventLoopGroup: EventLoopGroup? = nil) throws -> Future<GraphQLResult> {

        let schema = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve())
        return try graphql(schema: schema,
                           request: request,
                           rootValue: Query(viewerContext: viewerContext),
                           eventLoopGroup: eventLoopGroup ?? defaultEventLoopGroup)
    }

}

extension Schema where ViewerContext == Void {

    public static func perform(request: String) throws -> Future<GraphQLResult> {
        return try perform(request: request, viewerContext: ())
    }

}
