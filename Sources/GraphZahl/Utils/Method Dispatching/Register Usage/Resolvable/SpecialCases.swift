
import Foundation

protocol SpecialCase: SelfMethodCallResolvable { }

extension SpecialCase {
    static func createArguments(value: Self) throws -> [FunctionArgument] {
        let bytes = withUnsafeBytes(of: value) { $0.bindMemory(to: Int.self) }
        return bytes.map { .int(.int($0)) }
    }

    static func createNil() throws -> [FunctionArgument] {
        let numberOfBytes = MemoryLayout<Self>.size / 8
        return Array(repeating: .int(.int(0)), count: numberOfBytes)
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        let numberOfBytes = MemoryLayout<Self>.size / 8
        let array = (0..<numberOfBytes).map { FunctionResult.int(.int(pointer.advanced(by: $0 * 8).assumingMemoryBound(to: Int.self))) }
        return (array, MemoryLayout<Self>.stride)
    }
}

protocol ReferenceConvertibleSpecialScase: SpecialCase, ReferenceConvertible { }

extension ReferenceConvertibleSpecialScase {

    static func createArguments(value: Self) throws -> [FunctionArgument] {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Self>.size, alignment: MemoryLayout<Self>.alignment)
        pointer.storeBytes(of: value, as: Self.self)
        return [.int(.pointer(pointer))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Self>.stride)
    }

}

extension Bool: SelfMethodCallResolvable {

    static func createArguments(value: Bool) throws -> [FunctionArgument] {
        return [.int(.int8(value ? 1 : 0))]
    }

    static func createNil() throws -> [FunctionArgument] {
        return [.int(.int8(2))]
    }

    static func decoder(pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Bool>.stride)
    }

}

extension String: SpecialCase { }

extension Array: SpecialCase { }

extension Date: SpecialCase { }

extension UUID: ReferenceConvertibleSpecialScase { }

extension URL: ReferenceConvertibleSpecialScase { }
