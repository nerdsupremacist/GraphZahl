
import Foundation
import Fluent
import LeoQL
import GraphQL

extension ChildrenProperty: Resolvable where To: Resolvable { }

extension ChildrenProperty: OutputResolvable where To: OutputResolvable & ConcreteResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return QueryBuilder<To>.additionalArguments
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: QueryBuilder<To>.self)
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        return try query(on: source as! Database).resolve(source: source, arguments: arguments, eventLoop: eventLoop)
    }

}
