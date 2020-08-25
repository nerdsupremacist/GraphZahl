
import Foundation
import NIO
import GraphQL
import ContextKit

public protocol IndexedConnection: OutputResolvable, ConcreteResolvable {
    associatedtype Node: ConcreteResolvable & OutputResolvable
    associatedtype Identifier: Hashable
    associatedtype Translator: IndexCursorTranslator = StandardIndexCursorTranslator

    var identifier: Identifier { get }

    func totalCount(eventLoop: EventLoopGroup) -> EventLoopFuture<Int>
    func defaultPageSize(eventLoop: EventLoopGroup) -> EventLoopFuture<Int?>
    func nodes(offset: Int, size: Int, eventLoop: EventLoopGroup) -> EventLoopFuture<[Node?]?>
}

extension IndexedConnection {

    public func defaultPageSize(eventLoop: EventLoopGroup) -> EventLoopFuture<Int?> {
        return eventLoop.next().makeSucceededFuture(nil)
    }

}

extension IndexedConnection {

    public static var concreteTypeName: String {
        return IndexedConnectionWrapper<Self>.concreteTypeName
    }
    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var additionalArguments: [String : InputResolvable.Type] {
        return IndexedConnectionWrapper<Self>.additionalArguments
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return try context.resolve(type: IndexedConnectionWrapper<Self>.self)
    }

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> Output {
        try IndexedConnectionWrapper(connection: self).resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
    }

}
