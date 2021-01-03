
import GraphQL

enum PropertyResult {
    case field(String, GraphQLField)
    case interface(GraphQLInterfaceType, fields: [String : GraphQLField])
}

extension PropertyResult {

    var fieldMap: [String : GraphQLField] {
        switch self {
        case .field(let name, let field):
            return [name : field]
        case .interface(_, let fields):
            return fields
        }
    }

    var interface: GraphQLInterfaceType? {
        guard case .interface(let interface, _) = self else { return nil }
        return interface
    }

}
