
import Foundation
import Fluent
import LeoQL
import GraphQL

extension IDProperty: Resolvable where Value: Resolvable { }

extension IDProperty: OutputResolvable where Value: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Value.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: Value.self)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        return try wrappedValue.resolve(source: source, arguments: arguments, eventLoop: eventLoop)
    }

}
