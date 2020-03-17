
import Foundation
import GraphQL
import LeoQL
import Fluent
import Runtime

extension QueryBuilder: Resolvable where Model: Resolvable { }

extension QueryBuilder: OutputResolvable where Model: OutputResolvable & ConcreteResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Connection<Model>.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: Connection<Model>.self)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let first = try arguments["first"]?.intValue(converting: true)
        let after = try arguments["after"]?.stringValue(converting: true)
        let last = try arguments["last"]?.intValue(converting: true)
        let before = try arguments["before"]?.stringValue(converting: true)

        let connection = Connection(eventLoop: eventLoop,
                                    query: self,
                                    first: first,
                                    after: after,
                                    last: last,
                                    before: before)

        return eventLoop.future(connection)
    }
    
}
