
import GraphQL
import NIO

public protocol Schema {
    typealias None = EmptyRootType<ViewerContext>

    associatedtype ViewerContext
    associatedtype Query: QueryType where Query.ViewerContext == ViewerContext
    associatedtype Mutation: MutationType where Mutation.ViewerContext == ViewerContext
}
