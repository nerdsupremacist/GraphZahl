
import Foundation
import Fluent
import LeoQL
import GraphQL

extension SiblingsProperty: Resolvable where To: Resolvable { }

extension SiblingsProperty: OutputResolvable where To: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return To.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: To.self)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        return get(on: source as! Database)
            .flatMapThrowing { try $0.resolve(source: source, arguments: arguments, eventLoop: eventLoop) }
            .flatMap { $0 }
    }

}
