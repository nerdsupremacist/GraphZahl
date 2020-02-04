
import Foundation
import GraphQL

enum Resolution {
    
    struct Context {
        let types: [String : GraphQLOutputType]
        
        private init(types: [String : GraphQLOutputType]) {
            self.types = types
        }
    }
    
}

extension Resolution.Context {

    static let empty = Resolution.Context(types: [:])
    
    static func + <T : GraphQLOutputType & GraphQLNamedType>(lhs: Resolution.Context, rhs: T) -> Resolution.Context {
        return Resolution.Context(types: lhs.types.merging([rhs.name : rhs]) { $1 })
    }
    
    static func += <T : GraphQLOutputType & GraphQLNamedType>(lhs: inout Resolution.Context, rhs: T) {
        lhs = lhs + rhs
    }
    
}
