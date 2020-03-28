
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        var resolved: [String : GraphQLType]
        var unresolvedInterfaces: Set<String>
        let viewerContext: Any.Type

        private init(resolved: [String : GraphQLType], unresolvedInterfaces: Set<String>, viewerContext: Any.Type) {
            self.resolved = resolved
            self.unresolvedInterfaces = []
            self.viewerContext = viewerContext
        }
    }
    
}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 }, unresolvedInterfaces: unresolvedInterfaces, viewerContext: viewerContext)
    }

    public mutating func append(type: GraphQLType, as name: String) {
        self = appending(type: type, as: name)
    }

}

extension Resolution.Context {

    public mutating func resolve(type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let type = type.typeName.flatMap({ resolved[$0] }) as? GraphQLOutputType {
            return type
        }
        let outputType = try type.resolve(using: &self)
        if let typeName = type.typeName {
            append(type: outputType, as: typeName)
        }

        if let type = type as? GraphQLObject.Type, unresolvedInterfaces.contains(type.concreteTypeName) {
            return GraphQLNonNull(try resolveInterface(object: type))
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

    public mutating func resolveInterface(object: GraphQLObject.Type) throws -> GraphQLInterfaceType {
        let name = object.concreteTypeName
        if !unresolvedInterfaces.contains(name) {
            if let type = resolved[name] as? GraphQLInterfaceType {
                return type
            }
        }

        let nonNull = try resolve(type: object) as! GraphQLNonNull
        switch nonNull.ofType {
        case let object as GraphQLObjectType:
            let fields = object.fields.mapValues { GraphQLField(type: $0.type, args: Dictionary(uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) }, resolve: $0.resolve) }
            let type = try GraphQLInterfaceType(name: name, fields: fields)
            unresolvedInterfaces.remove(name)
            try resolved.update(object: name, with: type)
            return type

        case let interface as GraphQLInterfaceType:
            return interface

        case is GraphQLTypeReference:
            self = .init(resolved: resolved, unresolvedInterfaces: unresolvedInterfaces.union([object.concreteTypeName]), viewerContext: viewerContext)
            return try GraphQLInterfaceType(name: name, fields: [:])

        default:
            fatalError()

        }
    }

}

extension Resolution.Context {

    static func empty(viewerContext: Any.Type) -> Resolution.Context {
        return Resolution.Context(resolved: [:], unresolvedInterfaces: [], viewerContext: viewerContext)
    }

}

extension Dictionary where Key == String, Value == GraphQLType {

    mutating func update(object: String, with interface: GraphQLInterfaceType) throws {
        let items = self
        var converted = [String : GraphQLType]()
        for (key, value) in items {
            self[key] = try value.update(object: object, with: interface, using: &converted)
        }
    }

}

extension GraphQLType {

    func update(object name: String, with interface: GraphQLInterfaceType, using alreadyConverted: inout [String : GraphQLType]) throws -> GraphQLType {
        if let namedType = self as? GraphQLNamedType, let converted = alreadyConverted[namedType.name] {
            return converted
        }

        let result = try tryUpdate(object: name, with: interface, using: &alreadyConverted)
        if let namedType = self as? GraphQLNamedType {
            alreadyConverted[namedType.name] = result
        }
        return result
    }

    private func tryUpdate(object name: String, with interface: GraphQLInterfaceType, using alreadyConverted: inout [String : GraphQLType]) throws -> GraphQLType {
        switch self {
        case let object as GraphQLObjectType where object.name == name:
            return interface
        case let object as GraphQLObjectType:
            let fields = try object.fields.mapValues { field in try field.update(object: name, with: interface, using: &alreadyConverted) }
            return try GraphQLObjectType(name: object.name,
                                         description: object.description,
                                         fields: fields,
                                         interfaces: object.interfaces,
                                         isTypeOf: object.isTypeOf)
        case let otherInterface as GraphQLInterfaceType where otherInterface.name == name:
            assert(otherInterface == interface)
            return interface
        case let otherInterface as GraphQLInterfaceType:
            let fields = try otherInterface.fields.mapValues { field in try field.update(object: name, with: interface, using: &alreadyConverted) }
            return try GraphQLInterfaceType(name: otherInterface.name, description: otherInterface.description, fields: fields, resolveType: otherInterface.resolveType)
        case let nonNull as GraphQLNonNull:
            let updated = try nonNull.ofType.update(object: name, with: interface, using: &alreadyConverted) as! GraphQLNullableType
            return GraphQLNonNull(updated)
        case let list as GraphQLList:
            let updated = try list.ofType.update(object: name, with: interface, using: &alreadyConverted)
            return GraphQLList(updated)
        default:
            return self
        }
    }
}

extension GraphQLFieldDefinition {

    func update(object name: String, with interface: GraphQLInterfaceType, using alreadyConverted: inout [String : GraphQLType]) throws -> GraphQLField {
        return GraphQLField(type: try type.update(object: name, with: interface, using: &alreadyConverted) as! GraphQLOutputType,
                            description: description,
                            deprecationReason: deprecationReason,
                            args: Dictionary(uniqueKeysWithValues: args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) },
                            resolve: resolve)
    }

}
