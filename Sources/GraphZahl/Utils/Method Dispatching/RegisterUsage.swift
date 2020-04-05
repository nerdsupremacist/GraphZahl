// This file was automatically generated and should not be edited.

import Foundation
import CContext
import Runtime

enum IntArgument {
    case bool(Bool)
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int(Int)
    case pointer(UnsafeMutableRawPointer)

    var value: Int {
        switch self {
        case .bool(let value):
            return Int(from: value)
        case .int8(let value):
            return Int(from: value)
        case .int16(let value):
            return Int(from: value)
        case .int32(let value):
            return Int(from: value)
        case .int(let value):
            return Int(from: value)
        case .pointer(let value):
            return Int(from: value)
        }
    }
}

enum IntResult {
    case bool(UnsafeMutablePointer<Bool>)
    case int8(UnsafeMutablePointer<Int8>)
    case int16(UnsafeMutablePointer<Int16>)
    case int32(UnsafeMutablePointer<Int32>)
    case int(UnsafeMutablePointer<Int>)
    case pointer(UnsafeMutablePointer<UnsafeMutableRawPointer>)

    func decode(_ int: Int) {
        switch self {
        case .bool(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Bool.self) }
        case .int8(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int8.self) }
        case .int16(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int16.self) }
        case .int32(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int32.self) }
        case .int(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int.self) }
        case .pointer(let pointer):
            pointer.pointee = UnsafeMutableRawPointer(bitPattern: int)!
        }
    }
}

enum FloatArgument {
    case float(Float)
    case double(Double)

    var value: Double {
        switch self {
        case .float(let value):
            return Double(from: value)
        case .double(let value):
            return Double(from: value)
        }
    }
}

enum FloatResult {
    case float(UnsafeMutablePointer<Float>)
    case double(UnsafeMutablePointer<Double>)

    func decode(_ double: Double) {
        switch self {
        case .float(let pointer):
            pointer.pointee = Float(double)
        case .double(let pointer):
            pointer.pointee = Double(double)
        }
    }
}

enum FunctionArgument {
    case int(IntArgument)
    case float(FloatArgument)
}

enum FunctionResult {
    case int(IntResult)
    case float(FloatResult)
}

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

func resolveArguments(for value: Any, using type: Any.Type, isNil: Bool = false) throws -> [FunctionArgument] {
    if type == Bool.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.bool(value as! Bool))]
    }
    if type == Int8.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int8(value as! Int8))]
    }
    if type == Int16.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int16(value as! Int16))]
    }
    if type == Int32.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int32(value as! Int32))]
    }
    if type == Int.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int(value as! Int))]
    }
    if type == Float.self {
        if isNil {
            return [.float(.double(0))]
        }
        return [.float(.float(value as! Float))]
    }
    if type == Double.self {
        if isNil {
            return [.float(.double(0))]
        }
        return [.float(.double(value as! Double))]
    }

    // Special cases
    if type == String.self {
        if isNil {
            return [.int(.int(0)), .int(.int(0))]
        }
        let bytes = withUnsafeBytes(of: value as! String) { $0.bindMemory(to: Int.self) }
        return Array(bytes).map { .int(.int($0)) }
    }
    if type == UUID.self {
        if isNil {
            return [.int(.int(0))]
        }
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<UUID>.size, alignment: MemoryLayout<UUID>.size)
        pointer.storeBytes(of: value as! UUID, as: UUID.self)
        return [.int(.pointer(pointer))]
    }

    let (mangledName, kind, genericTypes, properties) = try typeInfo(of: type, .mangledName, .kind, .genericTypes, .properties)

    // More special cases
    if mangledName == "Array" {
        if isNil {
            return [.int(.int(0))]
        }
        let int = withUnsafeBytes(of: value) { $0.bindMemory(to: Int.self).baseAddress!.pointee }
        return [.int(.int(int))]
    }

    switch kind {
    case .class:
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.pointer(Unmanaged.passUnretained(value as AnyObject).toOpaque()))]
    case .optional:
        let actualType = genericTypes.first!
        let isNil = try isNil || isValueNil(value: value, type: actualType)
        return try resolveArguments(for: value, using: actualType, isNil: isNil) + [.int(.int8(isNil ? 1 : 0))]
    case .enum:
        if isNil {
            return [.int(.int8(0))]
        }
        return [.int(.int8(withUnsafeBytes(of: value) { $0.bindMemory(to: Int8.self).baseAddress!.pointee }))]
    default:
        return try properties.flatMap { try resolveArguments(for: isNil ? 0 : $0.get(from: value), using: $0.type, isNil: isNil) }
    }
}

func resolveResults(for type: Any.Type, pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
    if type == Bool.self {
        return ([.int(.bool(pointer.assumingMemoryBound(to: Bool.self)))], MemoryLayout<Bool>.size)
    }
    if type == Int8.self {
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.size)
    }
    if type == Int16.self {
        return ([.int(.int16(pointer.assumingMemoryBound(to: Int16.self)))], MemoryLayout<Int16>.size)
    }
    if type == Int32.self {
        return ([.int(.int32(pointer.assumingMemoryBound(to: Int32.self)))], MemoryLayout<Int32>.size)
    }
    if type == Int.self {
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.size)
    }
    if type == Float.self {
        return ([.float(.float(pointer.assumingMemoryBound(to: Float.self)))], MemoryLayout<Float>.size)
    }
    if type == Double.self {
        return ([.float(.double(pointer.assumingMemoryBound(to: Double.self)))], MemoryLayout<Double>.size)
    }

    // Special cases
    if type == String.self {
        return (
            [
                .int(.int(pointer.assumingMemoryBound(to: Int.self))),
                .int(.int(pointer.advanced(by: MemoryLayout<Int>.size).assumingMemoryBound(to: Int.self))),
            ],
            MemoryLayout<String>.size
        )
    }
    if type == UUID.self {
        return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
    }

    let (mangledName, kind, genericTypes, properties) = try typeInfo(of: type, .mangledName, .kind, .genericTypes, .properties)

    // More special cases
    if mangledName == "Array" {
         return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
    }

    switch kind {
    case .class:
        return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
    case .optional:
        if isPrimitive(type: genericTypes.first!) {
            let actualType = genericTypes.first!
            let (result, offset) = try resolveResults(for: actualType, pointer: pointer)
            return ([.int(.int8(pointer.advanced(by: 1).assumingMemoryBound(to: Int8.self)))] + result, offset + 1)
        } else if try typeInfo(of: genericTypes.first!, .kind) == .class {
            return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
        } else {
            let actualType = genericTypes.first!
            let (result, offset) = try resolveResults(for: actualType, pointer: pointer.advanced(by: 1))
            return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))] + result, offset + 1)
        }
    case .enum:
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.size)
    default:
        return try properties.reduce(([], 0)) { accumulator, property in
            let (results, offset) = try resolveResults(for: property.type, pointer: pointer.advanced(by: accumulator.1))
            return (accumulator.0 + results, accumulator.1 + offset)
        }
    }
}

func resolveDecoder(for type: Any.Type) throws -> FunctionResultDecoder {
    let (kind, genericTypes, typeSize, alignment) = try typeInfo(of: type, .kind, .genericTypes, .size, .alignment)

    let isOptional = kind == .optional
    let isClass = isOptional ? try typeInfo(of: genericTypes.first!, .kind) == .class : kind == .class
    let size = isOptional && !isPrimitive(type: genericTypes.first!) && !isClass ? typeSize + 1 : typeSize
    let pointer = UnsafeMutableRawBufferPointer.allocate(byteCount: size, alignment: alignment)
    let (results, offset) = try resolveResults(for: type, pointer: pointer.baseAddress!)
    assert(offset == size)

    return FunctionResultDecoder(type: type,
                                 pointer: UnsafeRawBufferPointer(pointer),
                                 results: results.ordered())
}

extension Sequence where Element == FunctionArgument {

    func ordered() -> [FunctionArgument] {
        return sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.int, .float):
                return true
            case (.int, .int), (.float, .float), (.float, .int):
                return false
            }
        }
    }

}

extension Sequence where Element == FunctionResult {

    func ordered() -> [FunctionResult] {
        return sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.int, .float):
                return true
            case (.int, .int), (.float, .float), (.float, .int):
                return false
            }
        }
    }

}

extension Int {

    fileprivate init<T>(from transformable: T) {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Int>.size, alignment: MemoryLayout<Int>.alignment)
        pointer.storeBytes(of: transformable, as: T.self)
        self = pointer.load(as: Int.self)
    }

}

extension Double {

    fileprivate init<T>(from transformable: T) {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Double>.size, alignment: MemoryLayout<Double>.alignment)
        pointer.storeBytes(of: transformable, as: T.self)
        self = pointer.load(as: Double.self)
    }

}

private func isPrimitive(type: Any.Type) -> Bool {
    if type == Bool.self {
        return true
    }
    if type == Int8.self {
        return true
    }
    if type == Int16.self {
        return true
    }
    if type == Int32.self {
        return true
    }
    if type == Int.self {
        return true
    }
    if type == Float.self {
        return true
    }
    if type == Double.self {
        return true
    }

    return false
}

private func isValueNil(value: Any, type: Any.Type) throws -> Bool {
    if value is NSNull && type != NSNull.self {
        return true
    }

    let size = try typeInfo(of: type, .size)

    let bytes = withUnsafeBytes(of: value) { $0.baseAddress!.assumingMemoryBound(to: Int8.self) }

    // Check that every value is zero
    guard UnsafeBufferPointer<Int8>(start: bytes, count: size).allSatisfy({ $0 == 0 }) else { return false }

    // Check that the byte at the end is not zero
    guard bytes.advanced(by: size).pointee != 0 else { return false }

    return true
}
