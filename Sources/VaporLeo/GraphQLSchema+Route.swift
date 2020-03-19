
import Foundation
import LeoQL
import Vapor

extension GraphQLSchema {

    static func route(at path: [PathComponent],
                      viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Route {

        return Route(method: .POST,
                     path: path,
                     responder: responder(viewerContext: viewerContext),
                     requestType: Query.self,
                     responseType: Self.Result.self)
    }

    public static func route(at path: PathComponent...,
                      viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Route {

        return route(at: path, viewerContext: viewerContext)
    }

    public static func route(at path: PathComponent...,
                      viewerContext: @escaping (Request) throws -> ViewerContext) -> Route {

        return route(at: path) { $0.eventLoop.future(try viewerContext($0)) }
    }

}

extension GraphQLSchema where ViewerContext == Void {

    public static func route(at path: PathComponent...) -> Route {
        return route(at: path) { $0.eventLoop.future(()) }
    }

}
