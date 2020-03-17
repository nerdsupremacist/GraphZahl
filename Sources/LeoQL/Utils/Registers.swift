
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

enum FunctionArgument {
    case int(IntArgument)
    case float(FloatArgument)
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

    let info = try typeInfo(of: type)
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

extension Sequence where Element == FunctionArgument {

    func ordered() -> [FunctionArgument] {
        return sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.int, .int), (.float, .float), (.int, .float):
                return true
            case (.float, .int):
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
