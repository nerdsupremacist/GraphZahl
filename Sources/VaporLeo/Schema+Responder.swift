
import Foundation
import LeoQL
import GraphQL
import Vapor

extension Schema {

    public static func responder(viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Responder {
        return SchemaHTTPResponder<Self>(viewerContextFactory: viewerContext)
    }

    public static func responder(viewerContext: @escaping (Request) throws -> ViewerContext) -> Responder {
        return responder { $0.future(try viewerContext($0)) }
    }

}

extension Schema where ViewerContext == Void {

    public static func responder() -> Responder {
        return responder { _ in () }
    }

}

private struct SchemaHTTPResponder<S: Schema>: Responder {
    let viewerContextFactory: (Request) throws -> EventLoopFuture<S.ViewerContext>

    func respond(to request: Request) throws -> EventLoopFuture<Response> {
        let query = try Query.decode(from: request)
        let viewerContext = try viewerContextFactory(request)
        let result = query
            .and(viewerContext)
            .thenThrowing { item -> EventLoopFuture<GraphQLResult> in
                let (query, viewerContext) = item
                return try S.perform(request: query.query, viewerContext: viewerContext)
            }

        return result.thenThrowing { try $0.encode(for: request) }
    }
}
