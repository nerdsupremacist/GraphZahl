// This file was automatically generated and should not be edited.

import Runtime
import CContext


extension MethodInfo.Argument {

    func defaultValue() throws -> Any? {
        guard let address = defaultAddress else { return nil }

        let resultDecoder = try resolveDecoder(for: type)

        switch resultDecoder.results.count {
        case 1:
            return try defaultWith1(address: address, decoder: resultDecoder)
        case 2:
            return try defaultWith2(address: address, decoder: resultDecoder)
        case 3:
            return try defaultWith3(address: address, decoder: resultDecoder)
        case 4:
            return try defaultWith4(address: address, decoder: resultDecoder)
        case 5:
            return try defaultWith5(address: address, decoder: resultDecoder)
        case 6:
            return try defaultWith6(address: address, decoder: resultDecoder)
        case 7:
            return try defaultWith7(address: address, decoder: resultDecoder)
        case 8:
            return try defaultWith8(address: address, decoder: resultDecoder)
        default:
            fatalError("Calls with more than \(MethodInfo.maximumNumberOfArgumentsWithReflection) arguments are not allowed")
        }
    }

}

extension MethodInfo.Argument {

        private func defaultWith1(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
            ) {


                case (
                    _
                    , .int(let res0)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    return try decoder.decode()

                case (
                    _
                    , .float(let res0)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith2(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .float(let res1)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    return try decoder.decode()

                case (
                    _
                    , .float(let res0)
                    , .float(let res1)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith3(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .float(let res2)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .float(let res1)
                    , .float(let res2)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    return try decoder.decode()

                case (
                    _
                    , .float(let res0)
                    , .float(let res1)
                    , .float(let res2)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith4(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
                , decoder.results[3]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .int(let res3)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_int_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .float(let res3)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .float(let res2)
                    , .float(let res3)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .float(let res1)
                    , .float(let res2)
                    , .float(let res3)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    return try decoder.decode()

                case (
                    _
                    , .float(let res0)
                    , .float(let res1)
                    , .float(let res2)
                    , .float(let res3)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (float_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith5(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
                , decoder.results[3]
                , decoder.results[4]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .int(let res3)
                    , .float(let res4)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_int_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .float(let res3)
                    , .float(let res4)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .float(let res2)
                    , .float(let res3)
                    , .float(let res4)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .float(let res1)
                    , .float(let res2)
                    , .float(let res3)
                    , .float(let res4)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_float_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith6(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
                , decoder.results[3]
                , decoder.results[4]
                , decoder.results[5]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .int(let res3)
                    , .float(let res4)
                    , .float(let res5)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_int_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .float(let res3)
                    , .float(let res4)
                    , .float(let res5)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .float(let res2)
                    , .float(let res3)
                    , .float(let res4)
                    , .float(let res5)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_float_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith7(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
                , decoder.results[3]
                , decoder.results[4]
                , decoder.results[5]
                , decoder.results[6]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .int(let res3)
                    , .float(let res4)
                    , .float(let res5)
                    , .float(let res6)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_int_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    res6.decode(result.res6)
                    return try decoder.decode()

                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .float(let res3)
                    , .float(let res4)
                    , .float(let res5)
                    , .float(let res6)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_float_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    res6.decode(result.res6)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }
        private func defaultWith8(address: UnsafeRawPointer, decoder: FunctionResultDecoder) throws -> Any {
            switch (
                address
                , decoder.results[0]
                , decoder.results[1]
                , decoder.results[2]
                , decoder.results[3]
                , decoder.results[4]
                , decoder.results[5]
                , decoder.results[6]
                , decoder.results[7]
            ) {


                case (
                    _
                    , .int(let res0)
                    , .int(let res1)
                    , .int(let res2)
                    , .int(let res3)
                    , .float(let res4)
                    , .float(let res5)
                    , .float(let res6)
                    , .float(let res7)
                ):
                    let function = unsafeBitCast(address, to: (@convention(thin) () -> (int_int_int_int_float_float_float_float_function_result)).self)
                    let result = function()

                    res0.decode(result.res0)
                    res1.decode(result.res1)
                    res2.decode(result.res2)
                    res3.decode(result.res3)
                    res4.decode(result.res4)
                    res5.decode(result.res5)
                    res6.decode(result.res6)
                    res7.decode(result.res7)
                    return try decoder.decode()

            default:
                fatalError()
            }
        }

}
