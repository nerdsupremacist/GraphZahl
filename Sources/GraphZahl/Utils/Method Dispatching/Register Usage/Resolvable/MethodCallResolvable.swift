
import Foundation


protocol MethodCallResolvable {
    static func arguments(value: Any, isNil: Bool) throws -> [FunctionArgument]
    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int)
}

extension MethodCallResolvable {

    static var hasExtraInhabitants: Bool {
        return MemoryLayout<Self>.size == MemoryLayout<Self?>.size
    }

}

protocol SelfMethodCallResolvable: MethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument]
    static func createNil() throws -> [FunctionArgument]
}

extension SelfMethodCallResolvable {
    static func arguments(value: Any, isNil: Bool) throws -> [FunctionArgument] {
        if isNil {
            return try createNil()
        }
        return try createArguments(value: value as! Self)
    }
}

extension Int8: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.int(.int8(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.int(.int8(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.stride)
    }
}

extension Int16: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.int(.int16(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.int(.int16(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int16(pointer.assumingMemoryBound(to: Int16.self)))], MemoryLayout<Int16>.stride)
    }
}

extension Int32: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.int(.int32(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.int(.int32(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int32(pointer.assumingMemoryBound(to: Int32.self)))], MemoryLayout<Int32>.stride)
    }
}

extension Int: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.int(.int(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.int(.int(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.stride)
    }
}


extension Float: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.float(.float(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.float(.float(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.float(.float(pointer.assumingMemoryBound(to: Float.self)))], MemoryLayout<Float>.stride)
    }
}

extension Double: SelfMethodCallResolvable {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        return [.float(.double(value))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.float(.double(0))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.float(.double(pointer.assumingMemoryBound(to: Double.self)))], MemoryLayout<Double>.stride)
    }
}

