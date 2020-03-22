
import GraphQL
import NIO

public protocol GraphQLSchema {
    typealias Result = GraphQLResult
    typealias None = EmptyRootType<ViewerContext>

    associatedtype ViewerContext = Void
    associatedtype Query: QueryType where Query.ViewerContext == ViewerContext
    associatedtype Mutation: MutationType = None where Mutation.ViewerContext == ViewerContext
}
