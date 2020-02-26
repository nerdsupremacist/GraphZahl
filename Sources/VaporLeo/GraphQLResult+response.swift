
import Foundation
import Vapor
import GraphQL

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
