
import Foundation
import Runtime

func resolveArguments(for value: Any, using type: Any.Type, isNil: Bool = false) throws -> [FunctionArgument] {
    if let type = type as? MethodCallResolvable.Type {
        return try type.arguments(value: value, isNil: isNil)
    }

    let (kind, genericTypes, properties) = try typeInfo(of: type, .kind, .genericTypes, .properties)

    switch kind {
    case .class:
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.pointer(Unmanaged.passUnretained(value as AnyObject).toOpaque()))]
    case .optional:
        let actualType = genericTypes.first!
        let isNil = try isNil || isValueNil(value: value, type: actualType)

        if let actualType = actualType as? MethodCallResolvable.Type, actualType.hasExtraInhabitants {
            return try actualType.arguments(value: value, isNil: isNil)
        }

        let kind = try typeInfo(of: actualType, .kind)
        if  kind == .class {
            return try resolveArguments(for: value, using: actualType, isNil: isNil)
        }

        return try resolveArguments(for: value, using: actualType, isNil: isNil).map { $0.intArgument() } + [.int(.int8(isNil ? 1 : 0))]
    case .enum:
        if isNil {
            return [.int(.int8(0))]
        }
        return [.int(.int8(withUnsafeBytes(of: value) { $0.bindMemory(to: Int8.self).baseAddress!.pointee }))]
    default:
        return try properties.flatMap { try resolveArguments(for: isNil ? 0 : $0.get(from: value), using: $0.type, isNil: isNil) }
    }
}
