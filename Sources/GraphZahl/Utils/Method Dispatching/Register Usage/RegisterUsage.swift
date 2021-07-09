// swiftlint:disable all
// This file was automatically generated and should not be edited.

import Foundation
import CContext
import Runtime

enum IntArgument {
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int(Int)
    case pointer(UnsafeMutableRawPointer)

    var value: Int {
        switch self {
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
    
    var size: Int {
        switch self {
        case .int8:
            return MemoryLayout<Int8>.size
        case .int16:
            return MemoryLayout<Int16>.size
        case .int32:
            return MemoryLayout<Int32>.size
        case .int:
            return MemoryLayout<Int>.size
        case .pointer:
            return MemoryLayout<UnsafeMutableRawPointer>.size
        }
    }
    
    func write(to pointer: UnsafeMutableRawPointer) {
        switch self {
        case .int8(let value):
            pointer.storeBytes(of: value, as: Int8.self)
        case .int16(let value):
            pointer.storeBytes(of: value, as: Int16.self)
        case .int32(let value):
            pointer.storeBytes(of: value, as: Int32.self)
        case .int(let value):
            pointer.storeBytes(of: value, as: Int.self)
        case .pointer(let value):
            pointer.storeBytes(of: value, as: UnsafeMutableRawPointer.self)
        }
    }
}

enum IntResult {
    case int8(UnsafeMutablePointer<Int8>)
    case int16(UnsafeMutablePointer<Int16>)
    case int32(UnsafeMutablePointer<Int32>)
    case int(UnsafeMutablePointer<Int>)

    func decode(_ int: Int) {
        switch self {
        case .int8(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int8.self) }
        case .int16(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int16.self) }
        case .int32(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int32.self) }
        case .int(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int.self) }
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
    
    var size: Int {
        switch self {
        case .float:
            return MemoryLayout<Float>.size
        case .double:
            return MemoryLayout<Double>.size
        }
    }
    
    func write(to pointer: UnsafeMutableRawPointer) {
        switch self {
        case .float(let value):
            pointer.storeBytes(of: value, as: Float.self)
        case .double(let value):
            pointer.storeBytes(of: value, as: Double.self)
        }
    }
}

extension FloatArgument {

    func intArgument() -> IntArgument {
        switch self {
        case .double(let double):
            return .int(Int(bitPattern: UInt(double.bitPattern)))
        case .float(let float):
            return .int32(Int32(bitPattern: float.bitPattern))
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

extension FloatResult {

    func intResult() -> IntResult {
        switch self {
        case .double(let pointer):
            return pointer.withMemoryRebound(to: Int.self, capacity: 1) { .int($0) }
        case .float(let pointer):
            return pointer.withMemoryRebound(to: Int32.self, capacity: 1) { .int32($0) }
        }
    }

}

enum FunctionArgument {
    case int(IntArgument)
    case float(FloatArgument)
    
    var size: Int {
        switch self {
        case .int(let int):
            return int.size
        case .float(let float):
            return float.size
        }
    }
    
    func write(to pointer: UnsafeMutableRawPointer) {
        switch self {
        case .int(let int):
            int.write(to: pointer)
        case .float(let float):
            float.write(to: pointer)
        }
    }
}

extension FunctionArgument {

    func intArgument() -> FunctionArgument {
        switch self {
        case .int:
            return self
        case .float(let float):
            return .int(float.intArgument())
        }
    }

}

enum FunctionResult {
    case int(IntResult)
    case float(FloatResult)
}

extension FunctionResult {

    func intResult() -> FunctionResult {
        switch self {
        case .int:
            return self
        case .float(let float):
            return .int(float.intResult())
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

func resolveIntResults(for size: Int, pointer: UnsafeMutableRawPointer) -> [FunctionResult] {
    if size == 0 {
        return []
    }
    let remainder = size % MemoryLayout<Int>.size
    if remainder == MemoryLayout<Int8>.size {
        let newSize = size - MemoryLayout<Int8>.size
        return resolveIntResults(for: newSize, pointer: pointer) + [.int(.int8(pointer.advanced(by: newSize).assumingMemoryBound(to: Int8.self)))]
    }
    if remainder == MemoryLayout<Int16>.size {
        let newSize = size - MemoryLayout<Int16>.size
        return resolveIntResults(for: newSize, pointer: pointer) + [.int(.int16(pointer.advanced(by: newSize).assumingMemoryBound(to: Int16.self)))]
    }
    if remainder == MemoryLayout<Int32>.size {
        let newSize = size - MemoryLayout<Int32>.size
        return resolveIntResults(for: newSize, pointer: pointer) + [.int(.int32(pointer.advanced(by: newSize).assumingMemoryBound(to: Int32.self)))]
    }

    let newSize = size - MemoryLayout<Int>.size
    return resolveIntResults(for: newSize, pointer: pointer) + [.int(.int(pointer.advanced(by: newSize).assumingMemoryBound(to: Int.self)))]
}

func isPrimitive(type: Any.Type) -> Bool {
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

func isValueNil(value: Any, type: Any.Type) throws -> Bool {
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
