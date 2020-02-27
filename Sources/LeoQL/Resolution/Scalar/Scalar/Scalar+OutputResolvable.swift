
import Foundation
import GraphQL
import NIO

extension Scalar {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let type = try GraphQLScalarType(name: typeName) { value in
            guard let value = value as? Self else { fatalError() }
            return try value.encodeScalar().graphql()
        }

        context.append(output: type)

        return GraphQLNonNull(type)
    }

    public func resolve(source: Any, arguments: [String : Map], eventLoop: EventLoopGroup) -> EventLoopFuture<Any?> {
        return eventLoop.next().newSucceededFuture(result: self)
    }

}
