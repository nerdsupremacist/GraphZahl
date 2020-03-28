
import Foundation
import GraphQL
import NIO
import ContextKit


enum Union2<A, B> {
    case a(A)
    case b(B)
}

extension Union2: Resolvable where A: Resolvable, B: Resolvable { }

extension Union2: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union2: OutputResolvable where A: GraphQLObject, B: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union2 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union3<A, B, C> {
    case a(A)
    case b(B)
    case c(C)
}

extension Union3: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable { }

extension Union3: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union3: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union3 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union4<A, B, C, D> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
}

extension Union4: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable { }

extension Union4: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union4: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union4 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union5<A, B, C, D, E> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
}

extension Union5: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable { }

extension Union5: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union5: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union5 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union6<A, B, C, D, E, F> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
}

extension Union6: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable { }

extension Union6: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union6: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union6 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union7<A, B, C, D, E, F, G> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
}

extension Union7: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable { }

extension Union7: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union7: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union7 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union8<A, B, C, D, E, F, G, H> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
}

extension Union8: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable { }

extension Union8: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union8: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union8 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union9<A, B, C, D, E, F, G, H, I> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
}

extension Union9: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable { }

extension Union9: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union9: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union9 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union10<A, B, C, D, E, F, G, H, I, J> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
}

extension Union10: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable { }

extension Union10: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union10: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union10 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union11<A, B, C, D, E, F, G, H, I, J, K> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
}

extension Union11: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable { }

extension Union11: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union11: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union11 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union12<A, B, C, D, E, F, G, H, I, J, K, L> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
}

extension Union12: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable { }

extension Union12: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union12: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union12 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union13<A, B, C, D, E, F, G, H, I, J, K, L, M> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
}

extension Union13: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable { }

extension Union13: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union13: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union13 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union14<A, B, C, D, E, F, G, H, I, J, K, L, M, N> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
}

extension Union14: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable { }

extension Union14: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union14: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union14 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union15<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
}

extension Union15: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable { }

extension Union15: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union15: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union15 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union16<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)
}

extension Union16: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable, P: Resolvable { }

extension Union16: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable, P: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union16: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject, P: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .p(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union16 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
                case .p:
                    return outputs[15]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union17<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)
    case q(Q)
}

extension Union17: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable, P: Resolvable, Q: Resolvable { }

extension Union17: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable, P: ConcreteResolvable, Q: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union17: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject, P: GraphQLObject, Q: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .p(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .q(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union17 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
                case .p:
                    return outputs[15]
                case .q:
                    return outputs[16]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union18<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)
    case q(Q)
    case r(R)
}

extension Union18: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable, P: Resolvable, Q: Resolvable, R: Resolvable { }

extension Union18: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable, P: ConcreteResolvable, Q: ConcreteResolvable, R: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union18: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject, P: GraphQLObject, Q: GraphQLObject, R: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .p(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .q(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .r(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union18 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
                case .p:
                    return outputs[15]
                case .q:
                    return outputs[16]
                case .r:
                    return outputs[17]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union19<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)
    case q(Q)
    case r(R)
    case s(S)
}

extension Union19: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable, P: Resolvable, Q: Resolvable, R: Resolvable, S: Resolvable { }

extension Union19: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable, P: ConcreteResolvable, Q: ConcreteResolvable, R: ConcreteResolvable, S: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self, S.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union19: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject, P: GraphQLObject, Q: GraphQLObject, R: GraphQLObject, S: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .p(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .q(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .r(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .s(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self, S.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union19 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
                case .p:
                    return outputs[15]
                case .q:
                    return outputs[16]
                case .r:
                    return outputs[17]
                case .s:
                    return outputs[18]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
enum Union20<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T> {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
}

extension Union20: Resolvable where A: Resolvable, B: Resolvable, C: Resolvable, D: Resolvable, E: Resolvable, F: Resolvable, G: Resolvable, H: Resolvable, I: Resolvable, J: Resolvable, K: Resolvable, L: Resolvable, M: Resolvable, N: Resolvable, O: Resolvable, P: Resolvable, Q: Resolvable, R: Resolvable, S: Resolvable, T: Resolvable { }

extension Union20: ConcreteResolvable where A: ConcreteResolvable, B: ConcreteResolvable, C: ConcreteResolvable, D: ConcreteResolvable, E: ConcreteResolvable, F: ConcreteResolvable, G: ConcreteResolvable, H: ConcreteResolvable, I: ConcreteResolvable, J: ConcreteResolvable, K: ConcreteResolvable, L: ConcreteResolvable, M: ConcreteResolvable, N: ConcreteResolvable, O: ConcreteResolvable, P: ConcreteResolvable, Q: ConcreteResolvable, R: ConcreteResolvable, S: ConcreteResolvable, T: ConcreteResolvable {

    static var concreteTypeName: String {
        let types: [ConcreteResolvable.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self, S.self, T.self]
        return "Union" + types.map { $0.concreteTypeName }.joined(separator: "Or")
    }

}

extension Union20: OutputResolvable where A: GraphQLObject, B: GraphQLObject, C: GraphQLObject, D: GraphQLObject, E: GraphQLObject, F: GraphQLObject, G: GraphQLObject, H: GraphQLObject, I: GraphQLObject, J: GraphQLObject, K: GraphQLObject, L: GraphQLObject, M: GraphQLObject, N: GraphQLObject, O: GraphQLObject, P: GraphQLObject, Q: GraphQLObject, R: GraphQLObject, S: GraphQLObject, T: GraphQLObject {
    static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        switch self {
        case .a(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .b(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .c(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .d(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .e(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .f(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .g(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .h(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .i(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .j(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .k(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .l(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .m(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .n(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .o(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .p(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .q(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .r(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .s(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        case .t(let object):
            return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
        }
    }

    static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let name = concreteTypeName
        context.append(type: GraphQLTypeReference(name), as: name)
        let types: [GraphQLObject.Type] = [A.self, B.self, C.self, D.self, E.self, F.self, G.self, H.self, I.self, J.self, K.self, L.self, M.self, N.self, O.self, P.self, Q.self, R.self, S.self, T.self]
        let outputs = try types.map { try $0.resolveObject(using: &context) }
        let resolveType: GraphQLTypeResolve = { value, _, _ in
            switch value as! Union20 {
                case .a:
                    return outputs[0]
                case .b:
                    return outputs[1]
                case .c:
                    return outputs[2]
                case .d:
                    return outputs[3]
                case .e:
                    return outputs[4]
                case .f:
                    return outputs[5]
                case .g:
                    return outputs[6]
                case .h:
                    return outputs[7]
                case .i:
                    return outputs[8]
                case .j:
                    return outputs[9]
                case .k:
                    return outputs[10]
                case .l:
                    return outputs[11]
                case .m:
                    return outputs[12]
                case .n:
                    return outputs[13]
                case .o:
                    return outputs[14]
                case .p:
                    return outputs[15]
                case .q:
                    return outputs[16]
                case .r:
                    return outputs[17]
                case .s:
                    return outputs[18]
                case .t:
                    return outputs[19]
            }
        }
        return GraphQLNonNull(try GraphQLUnionType(name: name,
                                                   description: nil,
                                                   resolveType: resolveType,
                                                   types: outputs))
    }
}
