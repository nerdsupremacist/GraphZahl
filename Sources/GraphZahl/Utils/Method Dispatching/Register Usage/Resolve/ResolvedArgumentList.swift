
import Foundation

struct ResolvedArgumentList {
    let intRegisterArguments: [IntArgument]
    let floatRegisterArguments: [FloatArgument]
    let stackArguments: [FunctionArgument]
    
    var registerArguments: [FunctionArgument] {
        return intRegisterArguments.map { .int($0) } + floatRegisterArguments.map { .float($0) }
    }
}

extension ResolvedArgumentList {
    
    static func + (lhs: ResolvedArgumentList, rhs: FunctionArgument) -> ResolvedArgumentList {
        switch rhs {
        case .int(let intArgument) where lhs.intRegisterArguments.count < 6:
            return ResolvedArgumentList(intRegisterArguments: lhs.intRegisterArguments + [intArgument],
                                        floatRegisterArguments: lhs.floatRegisterArguments,
                                        stackArguments: lhs.stackArguments)
        case .float(let floatArgument) where lhs.floatRegisterArguments.count < 8:
            return ResolvedArgumentList(intRegisterArguments: lhs.intRegisterArguments,
                                        floatRegisterArguments: lhs.floatRegisterArguments + [floatArgument],
                                        stackArguments: lhs.stackArguments)
        default:
            return ResolvedArgumentList(intRegisterArguments: lhs.intRegisterArguments,
                                        floatRegisterArguments: lhs.floatRegisterArguments,
                                        stackArguments: lhs.stackArguments + [rhs])
        }
    }
    
}

extension Sequence where Element == FunctionArgument {
    
    func argumentList() -> ResolvedArgumentList {
        return reduce(ResolvedArgumentList(intRegisterArguments: [], floatRegisterArguments: [], stackArguments: [])) { $0 + $1 }
    }
    
}

protocol FunctionArgumentInstantiable { }
extension FunctionArgumentInstantiable {

    static func instantiate(from arguments: [FunctionArgument]) -> Self {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Self>.size, alignment: MemoryLayout<Self>.alignment)
        defer { pointer.deallocate() }
        
        var offset = 0
        for argument in arguments {
            argument.write(to: pointer.advanced(by: offset))
            offset += argument.size
        }
        
        return pointer.load(as: Self.self)
    }
    
}
