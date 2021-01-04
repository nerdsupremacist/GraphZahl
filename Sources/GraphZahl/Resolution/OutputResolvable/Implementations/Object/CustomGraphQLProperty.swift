
import Foundation
import Runtime

protocol CustomGraphQLProperty {
    static func resolve(with property: PropertyInfo,
                        for receiverType: GraphQLObject.Type,
                        using context: inout Resolution.Context) throws -> PropertyResult
}
