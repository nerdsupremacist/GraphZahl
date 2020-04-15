
import Foundation
import GraphQL
import NIO
import ContextKit


private var caseTypes = [Int : [GraphQLObject.Type]]()

public protocol GraphQLUnion: ConcreteResolvable, OutputResolvable { }

extension GraphQLUnion {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return [:]
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLTypeReference(concreteTypeName))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        let (kind, cases) = try typeInfo(of: Self.self, .kind, .cases)
        guard case .enum = kind else {
            throw GraphQLUnionError.unionTypeIsNotAnEnum(type: Self.self)
        }

        let objectMetaTypesTypes = cases.compactMap { $0.payload as? GraphQLObject.Type }

        guard objectMetaTypesTypes.count == cases.count else {
            let invalidCases = cases.map { $0.payload }.filter { $0 as? GraphQLObject.Type == nil }
            throw GraphQLUnionError.notAllCasesAreGraphQLObjects(type: Self.self,
                                                                 valid: objectMetaTypesTypes,
                                                                 invalid: invalidCases)
        }

        caseTypes[unsafeBitCast(Self.self, to: Int.self)] = objectMetaTypesTypes

        let objects = try objectMetaTypesTypes.map { try context.resolve(object: $0) }

        return try GraphQLUnionType(name: concreteTypeName,
                                    resolveType: nil,
                                    types: objects)
    }

    public func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {
        guard let cases = caseTypes[unsafeBitCast(Self.self, to: Int.self)] else {
            throw GraphQLUnionError.resolveOnObjectCalledBeforeRegisteringType(type: Self.self)
        }

        let bits = Int(ceil(log2(Double(cases.count))))
        let caseIndex = withUnsafeBytes(of: self) { Int($0.last!.mostSignificant(bits)) }
        let object = withUnsafeBytes(of: self) { bytes -> OutputResolvable in
            let mutable = bytes.mutableCopy()
            mutable.storeBytes(of: bytes.last!.zeroMostSignificant(bits), toByteOffset: bytes.count - 1, as: UInt8.self)
            return UnsafeRawPointer(mutable.baseAddress!).unsafeLoad(as: cases[caseIndex]) as! OutputResolvable
        }

        return try object.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop)
    }

}

extension UnsafeRawBufferPointer {

    fileprivate func mutableCopy() -> UnsafeMutableRawBufferPointer {
        let pointer = UnsafeMutableRawBufferPointer.allocate(byteCount: count, alignment: MemoryLayout<UInt8>.alignment)
        pointer.copyMemory(from: self)
        return pointer
    }

}

extension UInt8 {

    fileprivate func zeroMostSignificant(_ bits: Int) -> UInt8 {
        let shape = UInt8.max >> bits
        return self & shape
    }

    fileprivate func mostSignificant(_ bits: Int) -> UInt8 {
        let shift = Self(MemoryLayout<UInt8>.size * 8 - bits)
        let shape = UInt8.max >> (MemoryLayout<UInt8>.size * 8 - bits)
        return (self >> shift) & shape
    }

}
