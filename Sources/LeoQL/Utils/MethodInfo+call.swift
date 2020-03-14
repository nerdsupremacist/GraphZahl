
import Runtime


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
        case 4:
            return try callWith4(receiver: receiver, arguments: arguments)
        case 5:
            return try callWith5(receiver: receiver, arguments: arguments)
        default:
            fatalError("Calls with more than 10 arguments are not allowed")
        }
    }

}

extension MethodInfo {

    private func callWith0(receiver: AnyObject, arguments: [Any]) throws -> Any {
        let function = unsafeBitCast(address, to: (@convention(c) () -> Any).self)
        return function()
    }

    private func callWith1(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try size(of: self.arguments[0].type)
        ) {


        case (
            _
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)

            return function(arg0)


        case (
            _
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)

            return function(arg0)


        case (
            _
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)

            return function(arg0)


        case (
            _
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)

            return function(arg0)


        default:
            fatalError()
        }
    }
    private func callWith2(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try size(of: self.arguments[0].type)
            , try size(of: self.arguments[1].type)
        ) {


        case (
            _
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)

            return function(arg0,arg1)


        case (
            _
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)

            return function(arg0,arg1)


        case (
            _
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)

            return function(arg0,arg1)


        case (
            _
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)

            return function(arg0,arg1)


        case (
            _
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)

            return function(arg0,arg1)


        case (
            _
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)

            return function(arg0,arg1)


        case (
            _
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)

            return function(arg0,arg1)


        case (
            _
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)

            return function(arg0,arg1)


        case (
            _
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)

            return function(arg0,arg1)


        case (
            _
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)

            return function(arg0,arg1)


        case (
            _
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)

            return function(arg0,arg1)


        case (
            _
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)

            return function(arg0,arg1)


        case (
            _
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)

            return function(arg0,arg1)


        case (
            _
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)

            return function(arg0,arg1)


        case (
            _
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)

            return function(arg0,arg1)


        case (
            _
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)

            return function(arg0,arg1)


        default:
            fatalError()
        }
    }
    private func callWith3(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try size(of: self.arguments[0].type)
            , try size(of: self.arguments[1].type)
            , try size(of: self.arguments[2].type)
        ) {


        case (
            _
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)

            return function(arg0,arg1,arg2)


        case (
            _
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)

            return function(arg0,arg1,arg2)


        default:
            fatalError()
        }
    }
    private func callWith4(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try size(of: self.arguments[0].type)
            , try size(of: self.arguments[1].type)
            , try size(of: self.arguments[2].type)
            , try size(of: self.arguments[3].type)
        ) {


        case (
            _
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)

            return function(arg0,arg1,arg2,arg3)


        case (
            _
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)

            return function(arg0,arg1,arg2,arg3)


        default:
            fatalError()
        }
    }
    private func callWith5(receiver: AnyObject, arguments: [Any]) throws -> Any {
        switch (
            receiver
            , try size(of: self.arguments[0].type)
            , try size(of: self.arguments[1].type)
            , try size(of: self.arguments[2].type)
            , try size(of: self.arguments[3].type)
            , try size(of: self.arguments[4].type)
        ) {


        case (
            _
            , 8
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Bool, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Float, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 8
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, String, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Int.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Int, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Bool, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, Float, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 1
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Bool, String, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Bool.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Int, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Bool, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, Float, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 4
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Float, String, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: Float.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 8
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Int, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Int.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 1
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Bool, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Bool.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 4
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, Float, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: Float.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 8
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Int, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Int.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 1
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Bool, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Bool.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 4
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, Float, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: Float.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 8
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Int, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 8
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Int, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 8
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Int, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 8
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Int, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Int.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 1
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Bool, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 1
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Bool, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 1
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Bool, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 1
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Bool, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Bool.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 4
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Float, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 4
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Float, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 4
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Float, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 4
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, Float, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: Float.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 16
            , 8
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, String, Int) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Int.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 16
            , 1
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, String, Bool) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Bool.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 16
            , 4
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, String, Float) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: Float.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        case (
            _
            , 16
            , 16
            , 16
            , 16
            , 16
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (String, String, String, String, String) -> Any).self)

            let arg0 = safeishCast(arguments[0], to: String.self)
            let arg1 = safeishCast(arguments[1], to: String.self)
            let arg2 = safeishCast(arguments[2], to: String.self)
            let arg3 = safeishCast(arguments[3], to: String.self)
            let arg4 = safeishCast(arguments[4], to: String.self)

            return function(arg0,arg1,arg2,arg3,arg4)


        default:
            fatalError()
        }
    }

}

extension MethodInfo {

    static let maximumNumberOfArgumentsWithReflection = 5

}

private func safeishCast<T>(_ value: Any, to type: T.Type) -> T {
    return withUnsafePointer(to: value) { UnsafeRawPointer($0).load(as: type) }
}
