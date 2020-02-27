
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        private let inputs: [String : GraphQLInputType]
        private let outputs: [String : GraphQLOutputType]

        private init(inputs: [String : GraphQLInputType], outputs: [String : GraphQLOutputType]) {
            self.inputs = inputs
            self.outputs = outputs
        }
    }
    
}

extension Resolution.Context {

    func appending<T : GraphQLOutputType>(output: T, as name: String) -> Resolution.Context {
        return Resolution.Context(inputs: inputs, outputs: outputs.merging([name : output]) { $1 })
    }

    func appending<T : GraphQLInputType>(input: T, as name: String) -> Resolution.Context {
        return Resolution.Context(inputs: inputs.merging([name : input]) { $1 }, outputs: outputs)
    }

    mutating func append<T : GraphQLOutputType>(output: T, as name: String) {
        self = appending(output: output, as: name)
    }

    mutating func append<T : GraphQLInputType>(input: T, as name: String) {
        self = appending(input: input, as: name)
    }

}

extension Resolution.Context {

    func appending<T : GraphQLOutputType & GraphQLNamedType>(output: T) -> Resolution.Context {
        return appending(output: output, as: output.name)
    }

    func appending<T : GraphQLInputType & GraphQLNamedType>(input: T) -> Resolution.Context {
        return appending(input: input, as: input.name)
    }

    mutating func append<T : GraphQLOutputType & GraphQLNamedType>(output: T) {
        self = appending(output: output)
    }

    mutating func append<T : GraphQLInputType & GraphQLNamedType>(input: T) {
        self = appending(input: input)
    }
}

extension Resolution.Context {

    static let empty = Resolution.Context(inputs: [:], outputs: [:])
    
    static func + <T : GraphQLOutputType & GraphQLNamedType>(lhs: Resolution.Context, rhs: T) -> Resolution.Context {
        return lhs.appending(output: rhs)
    }

    static func + <T : GraphQLInputType & GraphQLNamedType>(lhs: Resolution.Context, rhs: T) -> Resolution.Context {
        return lhs.appending(input: rhs)
    }
    
    static func += <T : GraphQLOutputType & GraphQLNamedType>(lhs: inout Resolution.Context, rhs: T) {
        lhs.append(output: rhs)
    }

    static func += <T : GraphQLInputType & GraphQLNamedType>(lhs: inout Resolution.Context, rhs: T) {
        lhs.append(input: rhs)
    }
    
}

extension Resolution.Context {

    public mutating func resolve(type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let type = outputs[type.typeName] {
            return type
        }
        return try type.resolve(using: &self)
    }

    public mutating func resolve(type: InputResolvable.Type) throws -> GraphQLInputType {
        if let type = inputs[type.typeName] {
            return type
        }
        return try type.resolve(using: &self)
    }

}
