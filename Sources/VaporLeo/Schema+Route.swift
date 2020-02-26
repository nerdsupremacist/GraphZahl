
import Foundation
import LeoQL
import Vapor

extension Schema {

    static func route(at path: [PathComponentsRepresentable],
                      viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Route<Responder> {

        return Route(path: [.constant(HTTPMethod.POST.string)] + path.flatMap { $0.convertToPathComponents() },
                     output: responder(viewerContext: viewerContext))
    }

    public static func route(at path: PathComponentsRepresentable...,
                      viewerContext: @escaping (Request) throws -> EventLoopFuture<ViewerContext>) -> Route<Responder> {

        return route(at: path, viewerContext: viewerContext)
    }

    public static func route(at path: PathComponentsRepresentable...,
                      viewerContext: @escaping (Request) throws -> ViewerContext) -> Route<Responder> {

        return route(at: path) { $0.future(try viewerContext($0)) }
    }

}

extension Schema where ViewerContext == Void {

    public static func route(at path: PathComponentsRepresentable...) -> Route<Responder> {
        return route(at: path) { $0.future(()) }
    }

}
