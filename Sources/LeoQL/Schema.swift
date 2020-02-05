
import GraphQL
import NIO

public protocol Schema {
    typealias None = EmptyRootType<ViewerContext>

    associatedtype ViewerContext
    associatedtype Query: QueryType where Query.ViewerContext == ViewerContext
    associatedtype Mutation: MutationType where Mutation.ViewerContext == ViewerContext
}

private let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
private var schemaCache = [String : GraphQLSchema]()

extension Schema {
    
    private static func resolve() throws -> GraphQLSchema {
        var context = Resolution.Context.empty

        let query = try Query.resolveObject(using: &context)

        let mutation: GraphQLObjectType?
        if Mutation.self != None.self {
            mutation = try Mutation.resolveObject(using: &context)
        } else {
            mutation = nil
        }

        return try GraphQLSchema(query: query,
                                 mutation: mutation,
                                 subscription: nil,
                                 types: [],
                                 directives: [])
    }

    public static func perform(request: String, viewerContext: ViewerContext) throws -> Future<GraphQLResult> {
        let schema = try schemaCache.getOrPut(String(describing: Self.self), default: try resolve())
        return try graphql(schema: schema,
                           request: request,
                           rootValue: Query(viewerContext: viewerContext),
                           eventLoopGroup: eventLoopGroup)
    }
    
}

extension Schema where ViewerContext == Void {

    public static func perform(request: String) throws -> Future<GraphQLResult> {
        return try perform(request: request, viewerContext: ())
    }

}

extension Dictionary {

    mutating func getOrPut(_ key: Key, default defaultValue: @autoclosure () throws -> Value) rethrows -> Value {
        guard let value = self[key] else {
            let value = try defaultValue()
            self[key] = value
            return value
        }
        return value
    }

}
