
import GraphQL

enum PropertyResult {
    case field(String, GraphQLField)
    case interfaces([GraphQLInterfaceType], fields: [String : GraphQLField])
    case ignore
}

extension PropertyResult {

    var fieldMap: [String : GraphQLField] {
        switch self {
        case .field(let name, let field):
            return [name : field]
        case .interfaces(_, let fields):
            return fields
        case .ignore:
            return [:]
        }
    }

    var interfaces: [GraphQLInterfaceType] {
        guard case .interfaces(let interface, _) = self else { return [] }
        return interface
    }

}
