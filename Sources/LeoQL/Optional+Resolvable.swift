
import Foundation
import GraphQL

extension Optional: OutputResolvable where Wrapped: OutputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        guard let resolved = try Wrapped.resolve(using: &context) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLOutputType else { fatalError() }
        return type
    }

}
