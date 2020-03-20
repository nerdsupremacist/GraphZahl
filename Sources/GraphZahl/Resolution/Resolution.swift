
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        let resolved: [String : GraphQLType]

        private init(resolved: [String : GraphQLType]) {
            self.resolved = resolved
        }
    }
    
}

extension Resolution.Context {

    public func appending(type: GraphQLType, as name: String) -> Resolution.Context {
        return Resolution.Context(resolved: resolved.merging([name : type]) { $1 })
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

}

extension Resolution.Context {

    static let empty = Resolution.Context(resolved: [:])

}
