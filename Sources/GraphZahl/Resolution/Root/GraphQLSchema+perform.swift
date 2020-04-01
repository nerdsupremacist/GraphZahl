
import Foundation
import GraphQL
import NIO
import ContextKit

private let defaultEventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
private var schemaCache = [String : GraphQL.GraphQLSchema]()

extension GraphQLSchema {

    public static func perform(request: String,
                               viewerContext: ViewerContext,
                               variableValues: [String : Map] = [:],
                               eventLoopGroup: EventLoopGroup? = nil) throws -> Future<GraphQLResult> {

        let schema = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve())

        let context = MutableContext {
            Self.viewerContext ~> viewerContext;
            .anyViewerContext ~> viewerContext
        }

        return try graphql(schema: schema,
                           request: request,
                           rootValue: viewerContext,
                           context: context,
                           eventLoopGroup: eventLoopGroup ?? defaultEventLoopGroup,
                           variableValues: variableValues)
    }

}

extension GraphQLSchema where ViewerContext == Void {

    public static func perform(request: String) throws -> Future<GraphQLResult> {
        return try perform(request: request, viewerContext: ())
    }

}

extension GraphQLSchema {

    public static var viewerContext: Context.Key<ViewerContext> {
        return .viewerContext
    }

}
