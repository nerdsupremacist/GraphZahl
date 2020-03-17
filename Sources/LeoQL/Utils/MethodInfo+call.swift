// This file was automatically generated and should not be edited.

import Runtime
import CContext


extension MethodInfo {

    func call(receiver: AnyObject, arguments: [Any]) throws -> Any {
        assert(arguments.count == self.arguments.count, "Argument count must correspond to original argument count")

        let arguments = try zip(arguments, self.arguments).flatMap { try resolveArguments(for: $0.0, using: $0.1.type) }.ordered()

        switch arguments.count {
        case 0:
            return try callWith0(receiver: receiver, arguments: arguments)
        case 1:
            return try callWith1(receiver: receiver, arguments: arguments)
        case 2:
            return try callWith2(receiver: receiver, arguments: arguments)
        case 3:
            return try callWith3(receiver: receiver, arguments: arguments)
        case 4:
            return try callWith4(receiver: receiver, arguments: arguments)
        case 5:
            return try callWith5(receiver: receiver, arguments: arguments)
        case 6:
            return try callWith6(receiver: receiver, arguments: arguments)
        case 7:
            return try callWith7(receiver: receiver, arguments: arguments)
        case 8:
            return try callWith8(receiver: receiver, arguments: arguments)
        case 9:
            return try callWith9(receiver: receiver, arguments: arguments)
        case 10:
            return try callWith10(receiver: receiver, arguments: arguments)
        case 11:
            return try callWith11(receiver: receiver, arguments: arguments)
        case 12:
            return try callWith12(receiver: receiver, arguments: arguments)
        case 13:
            return try callWith13(receiver: receiver, arguments: arguments)
        case 14:
            return try callWith14(receiver: receiver, arguments: arguments)
        default:
            fatalError("Calls with more than \(MethodInfo.maximumNumberOfArgumentsWithReflection) arguments are not allowed")
        }
    }

}

extension MethodInfo {

    private func callWith0(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> AnyObject).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> String).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> Int).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> Double).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> Bool).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
            ) {


            case (
                _
            ):
                let function = unsafeBitCast(address, to: (@convention(c) () -> Void).self)


                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function()


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith1(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> AnyObject).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> AnyObject).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> String).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> String).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Int).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> Int).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Double).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> Double).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Bool).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> Bool).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
            ) {


            case (
                _
                , .int(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Void).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            case (
                _
                , .float(let arg0)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double) -> Void).self)

                let arg0Casted = arg0.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted)


            }
        }

        fatalError()
    }
    private func callWith2(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith3(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith4(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith5(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith6(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith7(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith8(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            case (
                _
                , .float(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith9(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            case (
                _
                , .int(let arg0)
                , .float(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith10(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .float(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith11(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .float(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith12(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .float(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith13(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .float(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }
    private func callWith14(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        let returnType = try estimatedType(of: self.returnType)

        if returnType == AnyObject.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> AnyObject).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }
        if returnType == String.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> String).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }
        if returnType == Int.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Int).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }
        if returnType == Double.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Double).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }
        if returnType == Bool.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Bool).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }
        if returnType == Void.self {
            switch (
                receiver
                , arguments[0]
                , arguments[1]
                , arguments[2]
                , arguments[3]
                , arguments[4]
                , arguments[5]
                , arguments[6]
                , arguments[7]
                , arguments[8]
                , arguments[9]
                , arguments[10]
                , arguments[11]
                , arguments[12]
                , arguments[13]
            ) {


            case (
                _
                , .int(let arg0)
                , .int(let arg1)
                , .int(let arg2)
                , .int(let arg3)
                , .int(let arg4)
                , .int(let arg5)
                , .float(let arg6)
                , .float(let arg7)
                , .float(let arg8)
                , .float(let arg9)
                , .float(let arg10)
                , .float(let arg11)
                , .float(let arg12)
                , .float(let arg13)
            ):
                let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Void).self)

                let arg0Casted = arg0.value
                let arg1Casted = arg1.value
                let arg2Casted = arg2.value
                let arg3Casted = arg3.value
                let arg4Casted = arg4.value
                let arg5Casted = arg5.value
                let arg6Casted = arg6.value
                let arg7Casted = arg7.value
                let arg8Casted = arg8.value
                let arg9Casted = arg9.value
                let arg10Casted = arg10.value
                let arg11Casted = arg11.value
                let arg12Casted = arg12.value
                let arg13Casted = arg13.value

                let selfPointer = Unmanaged.passUnretained(self).toOpaque()
                let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
                set_self_pointer(receiverPointer)
                defer { set_self_pointer(selfPointer) }
                return function(arg0Casted, arg1Casted, arg2Casted, arg3Casted, arg4Casted, arg5Casted, arg6Casted, arg7Casted, arg8Casted, arg9Casted, arg10Casted, arg11Casted, arg12Casted, arg13Casted)


            default:
                fatalError()
            }
        }

        fatalError()
    }

}

extension MethodInfo {

    static let maximumNumberOfArgumentsWithReflection = 14

}

private func estimatedType(of type: Any.Type) throws -> Any.Type {
    let info = try typeInfo(of: type)
    switch info.kind {
    case .class:
        return AnyObject.self
    default:
        return type
    }
}
