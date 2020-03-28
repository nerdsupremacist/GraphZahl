
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        let resolved: [String : GraphQLType]
        let viewerContext: Any.Type

        private init(resolved: [String : GraphQLType], viewerContext: Any.Type) {
            self.resolved = resolved
            self.viewerContext = viewerContext
        }
    }
    
}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 }, viewerContext: viewerContext)
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
        let name = "I\(object.concreteTypeName)"
        if let type = resolved[name] as? GraphQLInterfaceType {
            return type
        }

        let nonNull = try resolve(type: object) as! GraphQLNonNull
        let object = nonNull.ofType as! GraphQLObjectType
        let fields = object.fields.mapValues { GraphQLField(type: $0.type, args: Dictionary(uniqueKeysWithValues: $0.args.map { ($0.name, $0.type) }).mapValues { GraphQLArgument(type: $0) }) }

        let type = try GraphQLInterfaceType(name: name, fields: fields)

        // TODO: Make the object type implement the interface as well and propagate the change
        append(type: type, as: name)
        return type
    }

}

extension Resolution.Context {

    static func empty(viewerContext: Any.Type) -> Resolution.Context {
        return Resolution.Context(resolved: [:], viewerContext: viewerContext)
    }

}
