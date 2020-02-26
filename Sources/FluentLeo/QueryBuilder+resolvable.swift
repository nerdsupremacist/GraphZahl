
import Foundation
import GraphQL
import LeoQL
import Fluent
import Runtime

extension QueryBuilder: Resolvable where Result: Resolvable {

    public static var typeName: String {
        return "\(Result.typeName)Connection"
    }

}

extension QueryBuilder: OutputResolvable where Result: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Connection<Database, Result>.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try Connection<Database, Result>.resolve(using: &context)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {


        let first = try arguments["first"]?.intValue()
        let after = try arguments["after"]?.stringValue()
        let last = try arguments["last"]?.intValue()
        let before = try arguments["before"]?.stringValue()

        let connection = Connection(eventLoop: eventLoop,
                                    query: self,
                                    first: first,
                                    after: after,
                                    last: last,
                                    before: before)

        return eventLoop.future(connection)
    }
    
}
