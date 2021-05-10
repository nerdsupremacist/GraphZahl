
import Foundation
import GraphQL
import Runtime

@propertyWrapper
public struct Inline<Wrapped : GraphQLObject> {
    public var wrappedValue: Wrapped

    public init(wrappedValue: Wrapped) {
        self.wrappedValue = wrappedValue
    }
}

extension Inline: CustomGraphQLProperty {

    static func resolve(with property: PropertyInfo,
                        for receiverType: GraphQLObject.Type,
                        using context: inout Resolution.Context) throws -> PropertyResult {

        let fields = try Wrapped.fieldsAndInterfaces(using: &context).fields.mapValues { field in
            return GraphQLField(
                type: field.type,
                description: field.description,
                deprecationReason: field.deprecationReason,
                args: field.args
            ) { source, arguments, context, eventLoop, info in
                let object = receiverType.object(from: source)
                let result = try property.get(from: object) as! Self
                return try field.resolve!(result.wrappedValue, arguments, context, eventLoop, info)
            }
        }

        return .interfaces([], fields: fields)
    }

}
