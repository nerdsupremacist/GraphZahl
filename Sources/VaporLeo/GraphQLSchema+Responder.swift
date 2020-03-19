
import Foundation
import LeoQL
import Vapor

extension GraphQLSchema {

    public static func responder(viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Responder {
        return SchemaHTTPResponder<Self>(viewerContextFactory: viewerContext)
    }

    public static func responder(viewerContext: @escaping (Request) throws -> ViewerContext) -> Responder {
        return responder { $0.eventLoop.future(try viewerContext($0)) }
    }

}

extension GraphQLSchema where ViewerContext == Void {

    public static func responder() -> Responder {
        return responder { _ in () }
    }

}

private struct SchemaHTTPResponder<S: GraphQLSchema>: Responder {
    let viewerContextFactory: (Request) throws -> EventLoopFuture<S.ViewerContext>

    func respond(to request: Request) -> EventLoopFuture<Response> {
        if request.body.data == nil {
            return request.body.collect().thenThrowing { _ in
                return self.response(to: request)
            }
        }
        return response(to: request)
    }

    private func response(to request: Request) -> EventLoopFuture<Response> {
        return request
            .eventLoop
            .tryFuture { try reponse(to: request) }
            .flatMap { $0 }
    }

    private func reponse(to request: Request) throws -> EventLoopFuture<Response> {
        let query = try request.content.decode(Query.self)
        let viewerContext = try viewerContextFactory(request)
        let result = viewerContext
            .thenThrowing { viewerContext -> EventLoopFuture<S.Result> in
                return try S.perform(request: query.query, viewerContext: viewerContext)
            }

        return result.flatMap { $0.encodeResponse(status: .ok, for: request) }
    }
}
