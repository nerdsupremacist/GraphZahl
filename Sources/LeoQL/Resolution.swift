
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
    
    static func + (lhs: Resolution.Context, rhs: GraphQLOutputType) -> Resolution.Context {
        fatalError()
    }
    
    static func += (lhs: inout Resolution.Context, rhs: GraphQLOutputType) {
        lhs = lhs + rhs
    }
    
}
