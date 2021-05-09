
import Foundation
import GraphQL
import Runtime
import NIO

@propertyWrapper
public class LazyInlineAsInterface<Wrapped : GraphQLObject> {
    private let load: () -> EventLoopFuture<Wrapped>
    fileprivate lazy var future: EventLoopFuture<Wrapped> = {
        return load()
    }()

    public var wrappedValue: Wrapped {
        return try! future.wait()
    }

    public init(_ load: @escaping () -> EventLoopFuture<Wrapped>) {
        self.load = load
    }
}

extension LazyInlineAsInterface: CustomGraphQLProperty {

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
                return result
                    .future
                    .flatMapThrowing { try field.resolve!($0, arguments, context, eventLoop, info) }
                    .flatMap { $0 }
            }
        }

        return .interfaces([interface] + object.interfaces, fields: fields)
    }

}
