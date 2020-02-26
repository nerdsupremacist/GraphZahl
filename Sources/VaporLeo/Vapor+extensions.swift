import Foundation

#if canImport(Vapor)
//#if canImport(CCryptoOpenSSL)
//#if canImport(libbase32)
#if canImport(libbcrypt)

import Vapor

extension Router {

    public func graphql<S: Schema>(path: PathComponentsRepresentable...,
                              use schema: S.Type,
                              viewerContext: @escaping (Request) throws -> S.ViewerContext) {

        post(Query.self, at: "graphql") { request, query in
            let viewer = try viewerContext(request)
            return try schema.perform(request: query.query, viewerContext: viewer)
        }
    }

    public func graphql<S: Schema>(path: PathComponentsRepresentable..., use: S.Type) where S.ViewerContext == Void {
        post(Query.self, at: "graphql") { request, query in
            return try schema.perform(request: query.query, viewerContext: ())
        }
    }

}

private struct Query : Content {
    let query: String
}

extension GraphQLResult: ResponseEncodable, LosslessHTTPBodyRepresentable {
    public func encode(for req: Request) throws -> EventLoopFuture<Response> {
        let response = HTTPResponse(status: .ok,
                                    headers: ["content-type" : "application/jsons"],
                                    body: self)

        return req.eventLoop.newSucceededFuture(result: Response(http: response, using: req.sharedContainer))
    }

    public func convertToHTTPBody() -> HTTPBody {
        do {
            return HTTPBody(data: try JSONEncoder().encode(self))
        } catch {
            return HTTPBody()
        }
    }
}


#endif
//#endif
//#endif
#endif
