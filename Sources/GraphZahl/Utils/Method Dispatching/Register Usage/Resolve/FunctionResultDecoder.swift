
import Foundation
import Runtime

struct FunctionResultDecoder {
    let type: Any.Type
    let pointer: UnsafeRawBufferPointer
    let results: [FunctionResult]

    func decode() throws -> Any {
        if type == Void.self {
            return ()
        }

        return pointer.baseAddress!.unsafeLoad(as: type)
    }
}

func resolveResults(for type: Any.Type, pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
    if let type = type as? MethodCallResolvable.Type {
        return try type.decoder(pointer: pointer)
    }

    let (kind, genericTypes, properties, stride) = try typeInfo(of: type, .kind, .genericTypes, .properties, .stride)

    switch kind {
    case .class:
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.size)
    case .optional:
        let actualType = genericTypes.first!
        if let actualType = actualType as? MethodCallResolvable.Type, actualType.hasExtraInhabitants {
            return try actualType.decoder(pointer: pointer)
        }

        if isPrimitive(type: actualType) {
            let (result, offset) = try resolveResults(for: actualType, pointer: pointer)
            return (result.map { $0.intResult() } + [.int(.int8(pointer.advanced(by: offset).assumingMemoryBound(to: Int8.self)))], stride)
        }

        let kind = try typeInfo(of: actualType, .kind)
        if  kind == .class {
            return try resolveResults(for: actualType, pointer: pointer)
        }

        // TODO: Refactor to use allow enum layouts: https://github.com/apple/swift/blob/master/docs/ABI/TypeLayout.rst#fragile-enum-layout
        let (result, _) = try resolveResults(for: actualType, pointer: pointer.advanced(by: 1))
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))] + result.map { $0.intResult() }, stride)
    case .enum:
        // TODO: Refactor to use more complex layouts: https://github.com/apple/swift/blob/master/docs/ABI/TypeLayout.rst#fragile-enum-layout
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.stride)
    default:
        return try properties.reduce(([], 0)) { accumulator, property in
            let (results, offset) = try resolveResults(for: property.type, pointer: pointer.advanced(by: accumulator.1))
            return (accumulator.0 + results, accumulator.1 + offset)
        }
    }
}

func resolveDecoder(for type: Any.Type) throws -> FunctionResultDecoder {
    let (size, stride, alignment) = try typeInfo(of: type, .size, .stride, .alignment)

    let pointer = UnsafeMutableRawBufferPointer.allocate(byteCount: size + 1, alignment: alignment)
    let (results, offset) = try resolveResults(for: type, pointer: pointer.baseAddress!)
    assert(size <= offset && offset <= stride)

    return FunctionResultDecoder(type: type,
                                 pointer: UnsafeRawBufferPointer(pointer),
                                 results: results.ordered())
}
