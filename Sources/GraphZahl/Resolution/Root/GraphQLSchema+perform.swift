
import Foundation
import GraphQL
import NIO
import ContextKit

private let defaultEventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
private var schemaCache = [String : GraphQL.GraphQLSchema]()

extension GraphQLSchema {

    public static func prepare(viewerContext: ViewerContext? = nil) throws {
        _ = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve(viewerContext: viewerContext))
    }

}

extension GraphQLSchema {

    /**
     Performs a GraphQL Request

     - Parameters:
         - request: Query Text
         - viewerContext: Viewer Context
         - variableValues; Values that should be given as variables to the Query. (defaults to empty)
         - eventLoop; Event Loop Group where the query should be resolved

     - Returns: A future with the result with data and errors for the query
     */
    public static func perform(request: String,
                               viewerContext: ViewerContext,
                               variableValues: [String : Map] = [:],
                               eventLoopGroup: EventLoopGroup? = nil) throws -> Future<GraphQLResult> {

        let schema = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve(viewerContext: viewerContext))

        let context = MutableContext {
            Self.viewerContext ~> viewerContext;
            .anyViewerContext ~> viewerContext
        }

        return try graphql(schema: schema,
                                 request: request,
                                 rootValue: viewerContext,
                                 context: context,
                                 eventLoopGroup: eventLoopGroup ?? defaultEventLoopGroup,
                                 variableValues: variableValues).always { result in

            switch result {
            case .success(let result):
                print("Successs=\(result)")
                fflush(stdout)
            case .failure(let error):
                print("Failure=\(error)")
                fflush(stdout)
            }
        }
    }

}

extension GraphQLSchema where ViewerContext == Void {

    /**
    Performs a GraphQL Request

    - Parameters:
        - request: Query Text
        - variableValues; Values that should be given as variables to the Query. (defaults to empty)
        - eventLoop; Event Loop Group where the query should be resolved

    - Returns: A future with the result with data and errors for the query
    */
    public static func perform(request: String,
                               variableValues: [String : Map] = [:],
                               eventLoopGroup: EventLoopGroup? = nil) throws -> Future<GraphQLResult> {
        return try perform(request: request, viewerContext: ())
    }

}

extension GraphQLSchema {

    public static var viewerContext: Context.Key<ViewerContext> {
        return .viewerContext
    }

}
