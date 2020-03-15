// This file was automatically generated and should not be edited.

import Runtime
import CContext


extension MethodInfo {

    func call(receiver: AnyObject, arguments: [Any]) throws -> Any {
        assert(arguments.count == self.arguments.count, "Argument count must correspond to original argument count")

        switch arguments.count {
        case 0:
            return try callWith0(receiver: receiver, arguments: arguments)
        case 1:
            return try callWith1(receiver: receiver, arguments: arguments)
        case 2:
            return try callWith2(receiver: receiver, arguments: arguments)
        case 3:
            return try callWith3(receiver: receiver, arguments: arguments)
        default:
            fatalError("Calls with more than \(MethodInfo.maximumNumberOfArgumentsWithReflection) arguments are not allowed")
        }
    }

}

extension MethodInfo {

    private func callWith0(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try sizeEstimation(of: returnType)
        ) {


        case (
            _
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) () -> AnyObject).self)


            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function()


        case (
            _
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) () -> Bool).self)


            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function()


        case (
            _
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) () -> Float).self)


            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function()


        case (
            _
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) () -> Int).self)


            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function()


        case (
            _
            , 16
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
    private func callWith1(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try sizeEstimation(of: self.arguments[0].type)
            , try sizeEstimation(of: returnType)
        ) {


        case (
            _
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        case (
            _
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0)


        default:
            fatalError()
        }
    }
    private func callWith2(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try sizeEstimation(of: self.arguments[0].type)
            , try sizeEstimation(of: self.arguments[1].type)
            , try sizeEstimation(of: returnType)
        ) {


        case (
            _
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1)


        default:
            fatalError()
        }
    }
    private func callWith3(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try sizeEstimation(of: self.arguments[0].type)
            , try sizeEstimation(of: self.arguments[1].type)
            , try sizeEstimation(of: self.arguments[2].type)
            , try sizeEstimation(of: returnType)
        ) {


        case (
            _
            , 0
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 0
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (AnyObject, String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: AnyObject.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Bool.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Float.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: Int.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 0
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, AnyObject, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: AnyObject.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Bool.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Float.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: Int.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 0
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, AnyObject) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 0
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, AnyObject) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 0
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, AnyObject) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 0
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, AnyObject) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 0
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, AnyObject) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: AnyObject.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Bool.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Float.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: Int.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
            , 0
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> AnyObject).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> Bool).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> Float).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> Int).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> String).self)

            let arg0 = safeishCast(value: arguments[0], to: String.self)
            let arg1 = safeishCast(value: arguments[1], to: String.self)
            let arg2 = safeishCast(value: arguments[2], to: String.self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0,arg1,arg2)


        default:
            fatalError()
        }
    }

}

extension MethodInfo {

    static let maximumNumberOfArgumentsWithReflection = 3

}

private func sizeEstimation(of type: Any.Type) throws -> Int {
    let info = try typeInfo(of: type)
    switch info.kind {
    case .class:
        return 0
    default:
        return info.size
    }
}

private func safeishCast<T>(value: Any, to type: T.Type) -> T {
    return withUnsafeBytes(of: value) { $0.baseAddress!.load(as: type) }
}
