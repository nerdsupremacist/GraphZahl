
import Foundation
import GraphQL

public enum Resolution {

    public enum Error: Swift.Error {
        // Input Resolvable Errors
        case cannotInstantiateTypeFromRawValue(InputResolvable.Type, rawValue: Any)

        // Input Object Errors
        case inputObjectIsNotAStruct(type: GraphQLInputObject.Type)
        case invalidPropertyInInputObject(name: String, type: Any.Type, ownerType: GraphQLInputObject.Type)

        // Union Type Errors
        case unionTypeIsNotAnEnum(type: GraphQLUnion.Type)
        case notAllCasesOfUnionAreGraphQLObjects(type: GraphQLUnion.Type, valid: [GraphQLObject.Type], invalid: [Any.Type?])

        case viewerContextDidNotMatchExpectedType(expectedType: Any.Type, viewerContext: Any?)
    }

    public struct Context {
        let resolved: [String : GraphQLType]
        let references: [String : GraphQLOutputType]
        let interfaces: [String : GraphQLInterfaceType]
        let unresolvedReferences: [String : OutputResolvable.Type]
        let viewerContextType: Any.Type
        let generatorViewerContext: Any?

        private init(resolved: [String : GraphQLType],
                     references: [String : GraphQLOutputType],
                     interfaces: [String : GraphQLInterfaceType],
                     unresolvedReferences: [String : OutputResolvable.Type],
                     viewerContextType: Any.Type,
                     generatorViewerContext: Any?) {

            self.resolved = resolved
            self.references = references
            self.unresolvedReferences = unresolvedReferences
            self.interfaces = interfaces
            self.viewerContextType = viewerContextType
            self.generatorViewerContext = generatorViewerContext
        }
    }
    
}

extension Resolution.Context {

    public func viewerContext<T>() throws -> T {
        guard let context = generatorViewerContext as? T else {
            throw Resolution.Error.viewerContextDidNotMatchExpectedType(expectedType: T.self,
                                                                        viewerContext: generatorViewerContext)
        }

        return context
    }

}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 },
                                  references: references,
                                  interfaces: interfaces,
                                  unresolvedReferences: unresolvedReferences,
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    public mutating func append(type: GraphQLType, as name: String) {
        self = appending(type: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(reference type: GraphQLOutputType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved,
                                  references: references.merging([name : type]) { $1 },
                                  interfaces: interfaces,
                                  unresolvedReferences: unresolvedReferences,
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    public mutating func append(reference type: GraphQLOutputType, as name: String) {
        self = appending(reference: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(interfaces type: GraphQLInterfaceType , as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved,
                                  references: references,
                                  interfaces: interfaces.merging([name : type]) { $1 },
                                  unresolvedReferences: unresolvedReferences,
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    public mutating func append(interfaces type: GraphQLInterfaceType, as name: String) {
        self = appending(interfaces: type, as: name)
    }

}

extension Resolution.Context {

    public func appending(unresolved type: OutputResolvable.Type, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved,
                                  references: references,
                                  interfaces: interfaces,
                                  unresolvedReferences: unresolvedReferences.merging([name : type]) { $1 },
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    public mutating func append(unresolved type: OutputResolvable.Type, as name: String) {
        self = appending(unresolved: type, as: name)
    }

}

extension Resolution.Context {

    public func removingUnresolved(with name: String) -> Resolution.Context {
        var unresolvedReferences = self.unresolvedReferences
        unresolvedReferences.removeValue(forKey: name)
        return Resolution.Context(resolved: resolved,
                                  references: references,
                                  interfaces: interfaces,
                                  unresolvedReferences: unresolvedReferences,
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    public mutating func removeUnresolved(with name: String) {
        self = removingUnresolved(with: name)
    }

}

extension Resolution.Context {

    @discardableResult
    public mutating func resolve(type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let typeName = type.typeName, let type = resolved[typeName] as? GraphQLOutputType {
            removeUnresolved(with: typeName)
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

    @discardableResult
    mutating func resolve(object type: GraphQLObject.Type) throws -> GraphQLObjectType {
        if let nonNull = type.typeName.flatMap({ resolved[$0] }) as? GraphQLNonNull, let type = nonNull.ofType as? GraphQLObjectType {
            return type
        }

        let outputType = try type.resolveObject(using: &self)

        removeUnresolved(with: type.concreteTypeName)
        append(type: GraphQLNonNull(outputType), as: type.concreteTypeName)

        return outputType
    }
}

extension Resolution.Context {

    public mutating func reference(for type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let interface = type.typeName.flatMap({ interfaces[$0] }) {
            return interface
        }
        
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
        let interfaceName = "I\(name)"

        if let interfaceNonNull = resolved[interfaceName] as! GraphQLNonNull? {
            return interfaceNonNull.ofType as! GraphQLInterfaceType
        }

        let nonNull =  try resolve(type: object) as! GraphQLNonNull
        let object  = nonNull.ofType as! GraphQLObjectType
        let interfaceFields = object
            .fields
            .mapValues {
                GraphQLField(
                    type: $0.type,
                    args: Dictionary(
                        uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }
                    )
                    .mapValues { GraphQLArgument(type: $0) }
                )
            }
        let interface = try GraphQLInterfaceType(name: interfaceName, fields: interfaceFields) { (value, eventLoop, info: GraphQLResolveInfo) in
            let schema = info.schema
            let interface = schema.getType(name: name) as! GraphQLInterfaceType
            let objects = schema.getPossibleTypes(abstractType: interface)
            let sorted = objects.sorted { $0.interfaces.count > $1.interfaces.count }
            return try sorted.first { try $0.isTypeOf.map { try $0(value, eventLoop, info) } ?? false } ?? "__\(name)"
        }

        let newObjectFields = object.fields.mapValues { field in
            GraphQLField(
                type: field.type,
                args: Dictionary(
                    uniqueKeysWithValues: field.args.map { ($0.name, $0.type) }
                )
                .mapValues { GraphQLArgument(type: $0) },
                resolve: field.resolve
            )
        }

        let newObject = try GraphQLObjectType(name: name,
                                              description: object.description,
                                              fields: newObjectFields,
                                              interfaces: object.interfaces + [interface],
                                              isTypeOf: object.isTypeOf)

        append(interfaces: interface, as: name)
        append(type: GraphQLNonNull(newObject), as: name)
        try replace(reference: name, with: interface)
        return interface
    }

}

extension Resolution.Context {

    static func empty(viewerContextType: Any.Type, viewerContext: Any?) -> Resolution.Context {
        return Resolution.Context(resolved: [:], references: [:], interfaces: [:], unresolvedReferences: [:], viewerContextType: viewerContextType, generatorViewerContext: viewerContext)
    }

}

extension Resolution.Context {

    func replacing(reference: String, with interface: GraphQLInterfaceType) throws -> Resolution.Context {
        let resolved = try self.resolved.mapValues { resolved -> GraphQLType in
            guard let nonNull = resolved as? GraphQLNonNull, let object = nonNull.ofType as? GraphQLObjectType else { return resolved }

            let newObjectFields = object.fields.mapValues { field in
                GraphQLField(
                    type: field.type.replacing(reference: reference, with: interface),
                    args: Dictionary(
                        uniqueKeysWithValues: field.args.map { ($0.name, $0.type) }
                    )
                    .mapValues { GraphQLArgument(type: $0) },
                    resolve: field.resolve
                )
            }

            let newObject = try GraphQLObjectType(name: object.name,
                                                  description: object.description,
                                                  fields: newObjectFields,
                                                  interfaces: object.interfaces + [interface],
                                                  isTypeOf: object.isTypeOf)

            return GraphQLNonNull(newObject)
        }

        return Resolution.Context(resolved: resolved,
                                  references: references,
                                  interfaces: interfaces,
                                  unresolvedReferences: unresolvedReferences,
                                  viewerContextType: viewerContextType,
                                  generatorViewerContext: generatorViewerContext)
    }

    mutating func replace(reference: String, with interface: GraphQLInterfaceType) throws {
        self = try replacing(reference: reference, with: interface)
    }

}

extension GraphQLOutputType {

    fileprivate func replacing(reference name: String, with interface: GraphQLInterfaceType) -> GraphQLOutputType {
        switch self {

        case let reference as GraphQLTypeReference where reference.name == name:
            return interface

        case let nonNull as GraphQLNonNull:
            let type = (nonNull.ofType as! GraphQLOutputType).replacing(reference: name, with: interface) as! GraphQLNullableType
            return GraphQLNonNull(type)

        case let list as GraphQLList:
            let type = (list.ofType as! GraphQLOutputType).replacing(reference: name, with: interface)
            return GraphQLList(type)

        case let object as GraphQLObjectType where object.name == name:
            return interface

        default:
            return self
        }
    }

}

extension Resolution.Context {

    mutating func resolveMissingReferences() throws {
        let previousKeys = Set(unresolvedReferences.keys)

        for reference in unresolvedReferences.values {
            try resolve(type: reference)
        }

        guard !unresolvedReferences.isEmpty else { return }

        let currentKeys = Set(unresolvedReferences.keys)
        if previousKeys.isSubset(of: currentKeys) {
            fatalError("Recursion issue in resolving missing references")
        }

        try resolveMissingReferences()
    }

}

extension Resolution.Context {

    mutating func types() throws -> [GraphQLNamedType] {
        try resolveMissingReferences()
        assert(unresolvedReferences.isEmpty)

        let types = resolved.values.compactMap { $0.namedType() }
        let outputs = Dictionary(uniqueKeysWithValues: types.compactMap { $0 as? GraphQLNamedType & GraphQLOutputType }.map { ($0.name, $0) })

        var updated: Set<String> = []
        for type in types {
            guard var outputType = type as? GraphQLOutputType else { continue }
            update(type: &outputType, types: outputs, updated: &updated)
        }

        return types
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

    case let union as GraphQLUnionType:
        updated.formUnion([union.name])
        for type in union.types {
            var type: GraphQLOutputType = type
            update(type: &type, types: types, updated: &updated)
        }

    default:
        return

    }
}
