
import LeoQL
import GraphQL
import Vapor

extension Router {

    public func graphql<S: Schema>(path: PathComponentsRepresentable...,
                                   use schema: S.Type,
                                   viewerContext: @escaping (Request) throws -> EventLoopFuture<S.ViewerContext>) {

        register(route: S.route(at: path, viewerContext: viewerContext))
    }

    public func graphql<S: Schema>(path: PathComponentsRepresentable...,
                                   use schema: S.Type,
                                   viewerContext: @escaping (Request) throws -> S.ViewerContext) {

        register(route: S.route(at: path, viewerContext: viewerContext))
    }

    public func graphql<S: Schema>(path: PathComponentsRepresentable...,
                                   use schema: S.Type) where S.ViewerContext == Void {

        register(route: S.route(at: path))
    }

}
