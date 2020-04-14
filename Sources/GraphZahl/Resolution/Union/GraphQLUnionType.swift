
import Foundation
import GraphQL
import NIO
import ContextKit


private var caseTypes = [Int : [GraphQLObject.Type]]()

public protocol GraphQLUnion: ConcreteResolvable, OutputResolvable { }

enum GraphQLUnionError: Error {
    case notAllCasesAreGraphQLObjects(type: GraphQLUnion.Type, valid: [GraphQLObject.Type], invalid: [Any.Type?])
    case resolveOnObjectCalledBeforeRegisteringType(type: GraphQLUnion.Type)
}

extension GraphQLUnion {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLTypeReference(concreteTypeName))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let cases = try typeInfo(of: Self.self, .cases)
        let objectMetaTypesTypes = cases.compactMap { $0.payload as? GraphQLObject.Type }

        guard objectMetaTypesTypes.count == cases.count else {
            let invalidCases = cases.map { $0.payload }.filter { $0 as? GraphQLObject.Type == nil }
            throw GraphQLUnionError.notAllCasesAreGraphQLObjects(type: Self.self,
                                                                 valid: objectMetaTypesTypes,
                                                                 invalid: invalidCases)
        }

        caseTypes[unsafeBitCast(Self.self, to: Int.self)] = objectMetaTypesTypes

        let objects = try objectMetaTypesTypes.map { try context.resolve(object: $0) }

        return try GraphQLUnionType(name: concreteTypeName,
                                    resolveType: nil,
                                    types: objects)
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        guard let cases = caseTypes[unsafeBitCast(Self.self, to: Int.self)] else {
            throw GraphQLUnionError.resolveOnObjectCalledBeforeRegisteringType(type: Self.self)
        }
        let caseIndex = withUnsafeBytes(of: self) { Int($0.last!) }
        let object = withUnsafeBytes(of: self) { $0.baseAddress!.unsafeLoad(as: cases[caseIndex]) as! OutputResolvable }
        return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
    }

}
