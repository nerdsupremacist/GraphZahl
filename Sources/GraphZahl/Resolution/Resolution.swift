
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        let resolved: [String : GraphQLType]
        let references: [String : GraphQLOutputType]
        let unresolvedReferences: [String : OutputResolvable.Type]
        let viewerContext: Any.Type

        private init(resolved: [String : GraphQLType], references: [String : GraphQLOutputType], unresolvedReferences: [String : OutputResolvable.Type], viewerContext: Any.Type) {
            self.resolved = resolved
            self.references = references
            self.unresolvedReferences = unresolvedReferences
            self.viewerContext = viewerContext
        }
    }
    
}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 }, references: references, unresolvedReferences: unresolvedReferences, viewerContext: viewerContext)
    }

    public mutating func append(type: GraphQLType, as name: String) {
        self = appending(type: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(reference type: GraphQLOutputType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved, references: references.merging([name : type]) { $1 }, unresolvedReferences: unresolvedReferences, viewerContext: viewerContext)
    }

    public mutating func append(reference type: GraphQLOutputType, as name: String) {
        self = appending(reference: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(unresolved type: OutputResolvable.Type, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved, references: references, unresolvedReferences: unresolvedReferences.merging([name : type]) { $1 }, viewerContext: viewerContext)
    }

    public mutating func append(unresolved type: OutputResolvable.Type, as name: String) {
        self = appending(unresolved: type, as: name)
    }

}

extension Resolution.Context {

    public func removingUnresolved(with name: String) -> Resolution.Context {
        var unresolvedReferences = self.unresolvedReferences
        unresolvedReferences.removeValue(forKey: name)
        return Resolution.Context(resolved: resolved, references: references, unresolvedReferences: unresolvedReferences, viewerContext: viewerContext)
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
        if let type = type.typeName.flatMap({ references[$0] }) {
            return type
        }

        let outputType = try type.reference(using: &self)

        if let typeName = type.typeName {
            append(reference: outputType, as: typeName)
        }

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

            let interfaceFields = object.fields.mapValues { GraphQLField(type: $0.type, args: Dictionary(uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) }) }
            let interface = try GraphQLInterfaceType(name: name, fields: interfaceFields)

            let newObjectName = "\(object.name)Impl"
            let newObjectFields = object.fields.mapValues { GraphQLField(type: $0.type,
                                                                         args: Dictionary(uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) }, resolve: $0.resolve) }
            let newObject = try GraphQLObjectType(name: newObjectName, description: object.description, fields: newObjectFields, interfaces: object.interfaces, isTypeOf: object.isTypeOf)

            append(type: GraphQLNonNull(interface), as: name)
            append(type: GraphQLNonNull(newObject), as: newObjectName)

            return interface

        case let interface as GraphQLInterfaceType:
            return interface

        default:
            fatalError()

        }
    }

}

extension Resolution.Context {

    static func empty(viewerContext: Any.Type) -> Resolution.Context {
        return Resolution.Context(resolved: [:], references: [:], unresolvedReferences: [:], viewerContext: viewerContext)
    }

}

extension Resolution.Context {

    mutating func resolveMissingReferences() throws {
        let previousCount = unresolvedReferences.count

        for reference in unresolvedReferences.values {
            try resolve(type: reference)
        }

        guard !unresolvedReferences.isEmpty else { return }

        if unresolvedReferences.count == previousCount {
            fatalError("Recursion issue in resolving missing references")
        }

        try resolveMissingReferences()
    }

}

extension Resolution.Context {

    mutating func types() throws -> [GraphQLNamedType] {
        try resolveMissingReferences()
        assert(unresolvedReferences.isEmpty)
        return resolved.values.compactMap { $0.namedType() }
    }

    private mutating func outputs() throws -> [GraphQLNamedType & GraphQLOutputType] {
        return try types().compactMap { $0 as? GraphQLNamedType & GraphQLOutputType }
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

extension Resolution.Context {

    mutating func resolve(object type: GraphQLObject.Type) throws -> GraphQLObjectType {
        let resolved = try type.resolveObject(using: &self)
        let types = Dictionary(uniqueKeysWithValues: try outputs().map { ($0.name, $0) })

        var updated: Set<String> = []
        var type: GraphQLOutputType = resolved
        update(type: &type, types: types, updated: &updated)
        assert(type is GraphQLObjectType)
        return resolved
    }

    mutating func resolve(object first: GraphQLObject.Type, _ second: GraphQLObject.Type) throws -> (GraphQLObjectType, GraphQLObjectType) {
        let first = try first.resolveObject(using: &self)
        let second = try second.resolveObject(using: &self)

        let types = Dictionary(uniqueKeysWithValues: try outputs().map { ($0.name, $0) })

        var updated: Set<String> = []
        var firstType: GraphQLOutputType = first
        var secondType: GraphQLOutputType = second
        update(type: &firstType, types: types, updated: &updated)
        update(type: &secondType, types: types, updated: &updated)

        assert(firstType is GraphQLObjectType)
        assert(secondType is GraphQLObjectType)
        return (first, second)
    }

}

private func update(type: inout GraphQLOutputType, types: [String : GraphQLOutputType], updated: inout Set<String>) {
    switch type {

    case let reference as GraphQLTypeReference:
        guard let resolved = types[reference.name] else { fatalError() }
        type = resolved
        update(type: &type, types: types, updated: &updated)

    case let named as GraphQLNamedType where updated.contains(named.name):
        return

    case let nonNull as GraphQLNonNull:
        var ofType = nonNull.ofType as! GraphQLOutputType
        update(type: &ofType, types: types, updated: &updated)
        type = GraphQLNonNull(ofType as! GraphQLNullableType)

    case let list as GraphQLList:
        var ofType = list.ofType as! GraphQLOutputType
        update(type: &ofType, types: types, updated: &updated)
        type = GraphQLList(ofType)

    case let object as GraphQLObjectType:
        updated.formUnion([object.name])
        for field in object.fields.values {
            update(type: &field.type, types: types, updated: &updated)
        }

    case let interface as GraphQLInterfaceType:
        updated.formUnion([interface.name])
        for field in interface.fields.values {
            update(type: &field.type, types: types, updated: &updated)
        }

    default:
        return

    }
}
