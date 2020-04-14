
import Foundation

enum GraphQLUnionError: Error {
    case unionTypeIsNotAnEnum(type: GraphQLUnion.Type)
    case notAllCasesAreGraphQLObjects(type: GraphQLUnion.Type, valid: [GraphQLObject.Type], invalid: [Any.Type?])
    case resolveOnObjectCalledBeforeRegisteringType(type: GraphQLUnion.Type)
}
