
import LeoQL
import GraphQL
import Vapor

extension RoutesBuilder {

    public func graphql<S: Schema>(path: [PathComponent],
                                   use schema: S.Type,
                                   viewerContext: @escaping (Request) throws -> EventLoopFuture<S.ViewerContext>) {

        add(S.route(at: path, viewerContext: viewerContext))
    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type,
                                   viewerContext: @escaping (Request) throws -> EventLoopFuture<S.ViewerContext>) {

        graphql(path: path, use: schema, viewerContext: viewerContext)
    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type,
                                   viewerContext: @escaping (Request) throws -> S.ViewerContext) {

        graphql(path: path, use: schema) { $0.eventLoop.makeSucceededFuture(try viewerContext($0)) }
    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type) where S.ViewerContext == Void {

        graphql(path: path, use: schema) { $0.eventLoop.makeSucceededFuture(()) }
    }

}
