
import Foundation
import GraphQL

public enum Resolution {
    
    public struct Context {
        let inputs: [String : GraphQLInputType]
        let outputs: [String : GraphQLOutputType]

        private init(inputs: [String : GraphQLInputType], outputs: [String : GraphQLOutputType]) {
            self.inputs = inputs
            self.outputs = outputs
        }
    }
    
}

extension Resolution.Context {

    func appending(output: GraphQLOutputType, as name: String) -> Resolution.Context {
        return Resolution.Context(inputs: inputs, outputs: outputs.merging([name : output]) { $1 })
    }

    func appending(input: GraphQLInputType, as name: String) -> Resolution.Context {
        return Resolution.Context(inputs: inputs.merging([name : input]) { $1 }, outputs: outputs)
    }

    mutating func append(output: GraphQLOutputType, as name: String) {
        self = appending(output: output, as: name)
    }

    mutating func append(input: GraphQLInputType, as name: String) {
        self = appending(input: input, as: name)
    }

}

extension Resolution.Context {

    public mutating func resolve(type: OutputResolvable.Type) throws -> GraphQLOutputType {
        if let type = type.typeName.flatMap({ outputs[$0] }) {
            return type
        }
        let outputType = try type.resolve(using: &self)
        if let typeName = type.typeName {
            append(output: outputType, as: typeName)
        }
        return outputType
    }

    public mutating func resolve(type: InputResolvable.Type) throws -> GraphQLInputType {
        if let type = type.typeName.flatMap({ inputs[$0] }) {
            return type
        }

        let inputType = try type.resolve(using: &self)
        if let typeName = type.typeName {
            append(input: inputType, as: typeName)
        }
        return inputType
    }

}

extension Resolution.Context {

    static let empty = Resolution.Context(inputs: [:], outputs: [:])

}
