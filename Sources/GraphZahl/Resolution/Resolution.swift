
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        let resolved: [String : GraphQLType]
        let unresolvedReferences: [String : OutputResolvable.Type]
        let viewerContext: Any.Type

        private init(resolved: [String : GraphQLType], unresolvedReferences: [String : OutputResolvable.Type], viewerContext: Any.Type) {
            self.resolved = resolved
            self.unresolvedReferences = unresolvedReferences
            self.viewerContext = viewerContext
        }
    }
    
}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 }, unresolvedReferences: unresolvedReferences, viewerContext: viewerContext)
    }

    public mutating func append(type: GraphQLType, as name: String) {
        self = appending(type: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(unresolved type: OutputResolvable.Type, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved, unresolvedReferences: unresolvedReferences.merging([name : type]) { $1 }, viewerContext: viewerContext)
    }

    public mutating func append(unresolved type: OutputResolvable.Type, as name: String) {
        self = appending(unresolved: type, as: name)
    }

}

extension Resolution.Context {

    public func removingUnresolved(with name: String) -> Resolution.Context {
        var unresolvedReferences = self.unresolvedReferences
        unresolvedReferences.removeValue(forKey: name)
        return Resolution.Context(resolved: resolved, unresolvedReferences: unresolvedReferences, viewerContext: viewerContext)
    }

    public mutating func removeUnresolved(with name: String) {
        self = removingUnresolved(with: name)
    }

}

extension Resolution.Context {

    @discardableResult
    public mutating func resolve(type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let type = type.typeName.flatMap({ resolved[$0] }) as? GraphQLOutputType {
            return type
        }
        let outputType = try type.resolve(using: &self)
        if let typeName = type.typeName {
            removeUnresolved(with: typeName)
            append(type: outputType, as: typeName)
        }

        try resolveMissingReferences()

        return outputType
    }

    public mutating func resolve(type: InputResolvable.Type) throws -> GraphQLInputType {
        if let type = type.typeName.flatMap({ resolved[$0] }) as? GraphQLInputType {
            return type
        }

        let inputType = try type.resolve(using: &self)
        if let typeName = type.typeName {
            append(type: inputType, as: typeName)
        }
        return inputType
    }

}

extension Resolution.Context {

    public mutating func reference(for type: OutputResolvable.Type) throws -> GraphQLOutputType {
        let outputType = try type.reference(using: &self)

        if let typeName = type.typeName, resolved[typeName] == nil, unresolvedReferences[typeName] == nil {
            append(unresolved: type, as: typeName)
        }

        return outputType
    }

}

extension Resolution.Context {

    public mutating func resolveInterface(object: GraphQLObject.Type) throws -> GraphQLInterfaceType {
        let name = object.concreteTypeName

        let nonNull = try resolve(type: object) as! GraphQLNonNull
        switch nonNull.ofType {
        case let object as GraphQLObjectType:
            let fields = object.fields.mapValues { GraphQLField(type: $0.type, args: Dictionary(uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) }, resolve: $0.resolve) }
            let type = try GraphQLInterfaceType(name: name, fields: fields)

            return type

        case let interface as GraphQLInterfaceType:
            return interface

        default:
            fatalError()

        }
    }

}

extension Resolution.Context {

    static func empty(viewerContext: Any.Type) -> Resolution.Context {
        return Resolution.Context(resolved: [:], unresolvedReferences: [:], viewerContext: viewerContext)
    }

}

extension Resolution.Context {

    mutating func resolveMissingReferences() throws {
        for reference in unresolvedReferences.values {
            try resolve(type: reference)
        }
    }

}

extension Resolution.Context {

    mutating func types() throws -> [GraphQLNamedType] {
        try resolveMissingReferences()
        assert(unresolvedReferences.isEmpty)
        return resolved.values.compactMap { $0.namedType() }
    }

}

extension GraphQLType {

    fileprivate func namedType() -> GraphQLNamedType? {
        switch self {
        case let nonNull as GraphQLNonNull:
            return nonNull.ofType.namedType()
        case let list as GraphQLList:
            return list.ofType.namedType()
        case let namedType as GraphQLNamedType:
            return namedType
        default:
            return nil
        }
    }

}
