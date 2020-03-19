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
            pointer.pointee = int != 0
        case .int8(let pointer):
            pointer.pointee = Int8(int)
        case .int16(let pointer):
            pointer.pointee = Int16(int)
        case .int32(let pointer):
            pointer.pointee = Int32(int)
        case .int(let pointer):
            pointer.pointee = Int(int)
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
    let isClass: Bool
    let pointer: UnsafeRawBufferPointer
    let results: [FunctionResult]

    func decode() throws -> Any {
        if (type == Void.self) {
            return ()
        }

        if (isClass) {
            return Unmanaged<AnyObject>.fromOpaque(pointer.load(as: UnsafeRawPointer.self)).takeRetainedValue()
        }

        var instance = try createInstance(of: type)
        withUnsafeMutableBytes(of: &instance) { bytes in
            bytes.copyMemory(from: pointer)
        }
        return instance
    }
}

func resolveArguments(for value: Any, using type: Any.Type) throws -> [FunctionArgument] {
    if type == Bool.self {
        return [.int(.bool(value as! Bool))]
    }
    if type == Int8.self {
        return [.int(.int8(value as! Int8))]
    }
    if type == Int16.self {
        return [.int(.int16(value as! Int16))]
    }
    if type == Int32.self {
        return [.int(.int32(value as! Int32))]
    }
    if type == Int.self {
        return [.int(.int(value as! Int))]
    }
    if type == Float.self {
        return [.float(.float(value as! Float))]
    }
    if type == Double.self {
        return [.float(.double(value as! Double))]
    }

    // Special cases
    if type == String.self {
        let bytes = withUnsafeBytes(of: value as! String) { $0.bindMemory(to: Int.self) }
        return Array(bytes).map { .int(.int($0)) }
    }

    let info = try typeInfo(of: type)

    // More special cases
    if info.mangledName == "Array" {
        return try info
            .properties
            .map { .int(.pointer(Unmanaged.passUnretained(try $0.get(from: value) as AnyObject).toOpaque())) }
    }

    switch info.kind {
    case .class:
        return [.int(.pointer(Unmanaged.passUnretained(value as AnyObject).toOpaque()))]
    case .optional:
        let actualType = info.genericTypes.first!
        return try resolveArguments(for: value, using: actualType)
    default:
        return try info.properties.flatMap { try resolveArguments(for: $0.get(from: value), using: $0.type) }
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

    let info = try typeInfo(of: type)

    // More special cases
    if info.mangledName == "Array" {
         return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
    }

    switch info.kind {
    case .class:
        return ([.int(.pointer(pointer.assumingMemoryBound(to: UnsafeMutableRawPointer.self)))], MemoryLayout<UnsafeMutableRawPointer>.size)
    default:
        return try info.properties.reduce(([], 0)) { accumulator, property in
            let (results, offset) = try resolveResults(for: property.type, pointer: pointer.advanced(by: accumulator.1))
            return (accumulator.0 + results, accumulator.1 + offset)
        }
    }
}

func resolveDecoder(for type: Any.Type) throws -> FunctionResultDecoder {
    let info = try typeInfo(of: type)

    let pointer = UnsafeMutableRawBufferPointer.allocate(byteCount: info.size, alignment: info.alignment)
    let (results, offset) = try resolveResults(for: type, pointer: pointer.baseAddress!)
    assert(offset == info.size)

    return FunctionResultDecoder(type: type, isClass: info.kind == .class, pointer: UnsafeRawBufferPointer(pointer), results: results)
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
