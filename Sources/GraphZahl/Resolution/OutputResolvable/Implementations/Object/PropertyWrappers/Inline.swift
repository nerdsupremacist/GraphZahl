
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

        let object = try context.resolve(object: Wrapped.self)
        let interface = try context.resolveInterface(object: Wrapped.self)

        let fields = object.fields.mapValues { field in
            return GraphQLField(
                type: field.type,
                description: field.description,
                deprecationReason: field.deprecationReason,
                args: Dictionary(
                    uniqueKeysWithValues: field.args.map { ($0.name, $0.type) }
                )
                .mapValues { GraphQLArgument(type: $0) }
            ) { source, arguments, context, eventLoop, info in

                let object = receiverType.object(from: source)
                let result = try property.get(from: object) as! Self
                return try field.resolve!(result.wrappedValue, arguments, context, eventLoop, info)
            }
        }

        return .interface(interface, fields: fields)
    }

}
