
import Foundation
import GraphQL
import Runtime

public protocol Object : class, OutputResolvable { }

extension Object {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = String(describing: Self.self)

        if let type = context.types[name] as? GraphQLNullableType {
            return GraphQLNonNull(type)
        }

        return GraphQLNonNull(try resolveObject(using: &context))
    }

    static func resolveObject(using context: inout Resolution.Context) throws -> GraphQLObjectType {
        let info = try typeInfo(of: Self.self)

        if let type = context.types[info.name] as? GraphQLObjectType {
            return type
        }

        context += GraphQLTypeReference(info.name)

        let propertyMap = Dictionary(uniqueKeysWithValues: info.properties.map { ($0.name, $0) })
        let properties: [String : GraphQLField] = try propertyMap
            .compactMapValues { propertyInfo in
                if propertyInfo.name == "id" {
                    return GraphQLField(type: GraphQLID) { (object, args, other, info) -> Any? in
                        return nil
                    }
                }

                guard let type = propertyInfo.type as? OutputResolvable.Type else { return nil }

                return GraphQLField(type: try type.resolve(using: &context)) { object, _, _, _ in
                    return try propertyInfo.get(from: object)
                }
            }

        let methodMap = Dictionary(uniqueKeysWithValues: info.methods.map { ($0.methodName, $0) })
        let methods = try methodMap
            .compactMapValues { method -> GraphQLField? in
                guard let returnType = method.returnType as? OutputResolvable.Type else { return nil }

                let mappedArguments = method.arguments.compactMap { argument in argument.name.map { ($0, argument) } }
                let arguments = try Dictionary(uniqueKeysWithValues: mappedArguments)
                    .compactMapValues { argument -> GraphQLArgument? in
                        guard let argumentType = argument.type as? InputResolvable.Type else { return nil }
                        return GraphQLArgument(type: try argumentType.resolve(using: &context))
                    }

                return GraphQLField(type: try returnType.resolve(using: &context),
                                    args: arguments) { (object, args, other, info) -> Any? in

                    let args = try args.dictionaryValue()
                    let arguments = try method.arguments.compactMap { argument -> Any? in
                        guard let name = argument.name,
                            let argumentType = argument.type as? InputResolvable.Type else { return nil }

                        return try args[name].map { try argumentType.init(map: $0) }
                    }
                    return method.call(receiver: object, arguments: arguments)
                }
            }

        let fields = properties.merging(methods) { $1 }
        let type = try GraphQLObjectType(name: info.name, fields: fields)

        context += type

        return type
    }

}

extension GraphQLTypeReference: GraphQLNamedType { }

