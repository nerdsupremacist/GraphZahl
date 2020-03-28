
import Foundation
import Runtime


struct TypeInfoValue<T> {
    let keyPath: KeyPath<TypeInfo, T>
    let includedFlag: TypeInfo.IncludeOptions?
}


extension TypeInfoValue where T == [MethodInfo] {
    static let methods = TypeInfoValue(keyPath: \.methods, includedFlag: .methods)
}


extension TypeInfoValue where T == TypeInfo.IncludeOptions {
    static let includedInfo = TypeInfoValue(keyPath: \.includedInfo, includedFlag: nil)
}


extension TypeInfoValue where T == [Case] {
    static let cases = TypeInfoValue(keyPath: \.cases, includedFlag: .cases)
}


extension TypeInfoValue where T == [PropertyInfo] {
    static let properties = TypeInfoValue(keyPath: \.properties, includedFlag: .properties)
}


extension TypeInfoValue where T == Int {
    static let alignment = TypeInfoValue(keyPath: \.alignment, includedFlag: nil)
}


extension TypeInfoValue where T == Int {
    static let size = TypeInfoValue(keyPath: \.size, includedFlag: nil)
}


extension TypeInfoValue where T == Kind {
    static let kind = TypeInfoValue(keyPath: \.kind, includedFlag: nil)
}


extension TypeInfoValue where T == String {
    static let name = TypeInfoValue(keyPath: \.name, includedFlag: nil)
}


extension TypeInfoValue where T == [Any.Type] {
    static let inheritance = TypeInfoValue(keyPath: \.inheritance, includedFlag: .inheritance)
}


extension TypeInfoValue where T == Int {
    static let stride = TypeInfoValue(keyPath: \.stride, includedFlag: nil)
}


extension TypeInfoValue where T == String {
    static let mangledName = TypeInfoValue(keyPath: \.mangledName, includedFlag: .mangledName)
}


extension TypeInfoValue where T == [Any.Type] {
    static let genericTypes = TypeInfoValue(keyPath: \.genericTypes, includedFlag: .genericTypes)
}


extension TypeInfoValue where T == Any.Type {
    static let type = TypeInfoValue(keyPath: \.type, includedFlag: nil)
}


func typeInfo<Arg0>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>) throws -> (Arg0) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath])
}

func typeInfo<Arg0, Arg1>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>) throws -> (Arg0, Arg1) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>) throws -> (Arg0, Arg1, Arg2) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>) throws -> (Arg0, Arg1, Arg2, Arg3) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>, _ arg8: TypeInfoValue<Arg8>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag, arg8.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath], info[keyPath: arg8.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>, _ arg8: TypeInfoValue<Arg8>, _ arg9: TypeInfoValue<Arg9>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag, arg8.includedFlag, arg9.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath], info[keyPath: arg8.keyPath], info[keyPath: arg9.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>, _ arg8: TypeInfoValue<Arg8>, _ arg9: TypeInfoValue<Arg9>, _ arg10: TypeInfoValue<Arg10>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag, arg8.includedFlag, arg9.includedFlag, arg10.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath], info[keyPath: arg8.keyPath], info[keyPath: arg9.keyPath], info[keyPath: arg10.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10, Arg11>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>, _ arg8: TypeInfoValue<Arg8>, _ arg9: TypeInfoValue<Arg9>, _ arg10: TypeInfoValue<Arg10>, _ arg11: TypeInfoValue<Arg11>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10, Arg11) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag, arg8.includedFlag, arg9.includedFlag, arg10.includedFlag, arg11.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath], info[keyPath: arg8.keyPath], info[keyPath: arg9.keyPath], info[keyPath: arg10.keyPath], info[keyPath: arg11.keyPath])
}

func typeInfo<Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10, Arg11, Arg12>(of type: Any.Type, _ arg0: TypeInfoValue<Arg0>, _ arg1: TypeInfoValue<Arg1>, _ arg2: TypeInfoValue<Arg2>, _ arg3: TypeInfoValue<Arg3>, _ arg4: TypeInfoValue<Arg4>, _ arg5: TypeInfoValue<Arg5>, _ arg6: TypeInfoValue<Arg6>, _ arg7: TypeInfoValue<Arg7>, _ arg8: TypeInfoValue<Arg8>, _ arg9: TypeInfoValue<Arg9>, _ arg10: TypeInfoValue<Arg10>, _ arg11: TypeInfoValue<Arg11>, _ arg12: TypeInfoValue<Arg12>) throws -> (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10, Arg11, Arg12) {
    let flags = TypeInfo.IncludeOptions([arg0.includedFlag, arg1.includedFlag, arg2.includedFlag, arg3.includedFlag, arg4.includedFlag, arg5.includedFlag, arg6.includedFlag, arg7.includedFlag, arg8.includedFlag, arg9.includedFlag, arg10.includedFlag, arg11.includedFlag, arg12.includedFlag].compactMap { $0 })
    let info = try typeInfo(of: type, include: flags)
    return (info[keyPath: arg0.keyPath], info[keyPath: arg1.keyPath], info[keyPath: arg2.keyPath], info[keyPath: arg3.keyPath], info[keyPath: arg4.keyPath], info[keyPath: arg5.keyPath], info[keyPath: arg6.keyPath], info[keyPath: arg7.keyPath], info[keyPath: arg8.keyPath], info[keyPath: arg9.keyPath], info[keyPath: arg10.keyPath], info[keyPath: arg11.keyPath], info[keyPath: arg12.keyPath])
}

