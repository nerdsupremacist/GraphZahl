// swiftlint:disable all
// This file was automatically generated and should not be edited.

import Foundation
import CContext


enum StackValues {
    case empty
    
    case ofSize1(function_argumemt_stack_1)
    case ofSize2(function_argumemt_stack_2)
    case ofSize3(function_argumemt_stack_3)
    case ofSize4(function_argumemt_stack_4)
    case ofSize5(function_argumemt_stack_5)
    case ofSize6(function_argumemt_stack_6)
    case ofSize7(function_argumemt_stack_7)
    case ofSize8(function_argumemt_stack_8)
    case ofSize9(function_argumemt_stack_9)
    case ofSize10(function_argumemt_stack_10)
    case ofSize11(function_argumemt_stack_11)
    case ofSize12(function_argumemt_stack_12)
    case ofSize13(function_argumemt_stack_13)
    case ofSize14(function_argumemt_stack_14)
    case ofSize15(function_argumemt_stack_15)
    case ofSize16(function_argumemt_stack_16)
    case ofSize17(function_argumemt_stack_17)
    case ofSize18(function_argumemt_stack_18)
    case ofSize19(function_argumemt_stack_19)
    case ofSize20(function_argumemt_stack_20)
    case ofSize21(function_argumemt_stack_21)
    case ofSize22(function_argumemt_stack_22)
    case ofSize23(function_argumemt_stack_23)
    case ofSize24(function_argumemt_stack_24)
    case ofSize25(function_argumemt_stack_25)
    case ofSize26(function_argumemt_stack_26)
    case ofSize27(function_argumemt_stack_27)
    case ofSize28(function_argumemt_stack_28)
    case ofSize29(function_argumemt_stack_29)
    case ofSize30(function_argumemt_stack_30)
    case ofSize31(function_argumemt_stack_31)
    case ofSize32(function_argumemt_stack_32)
    case ofSize33(function_argumemt_stack_33)
    case ofSize34(function_argumemt_stack_34)
    case ofSize35(function_argumemt_stack_35)
    case ofSize36(function_argumemt_stack_36)
    case ofSize37(function_argumemt_stack_37)
    case ofSize38(function_argumemt_stack_38)
    case ofSize39(function_argumemt_stack_39)
    case ofSize40(function_argumemt_stack_40)
}

extension function_argumemt_stack_1: FunctionArgumentInstantiable { }
extension function_argumemt_stack_2: FunctionArgumentInstantiable { }
extension function_argumemt_stack_3: FunctionArgumentInstantiable { }
extension function_argumemt_stack_4: FunctionArgumentInstantiable { }
extension function_argumemt_stack_5: FunctionArgumentInstantiable { }
extension function_argumemt_stack_6: FunctionArgumentInstantiable { }
extension function_argumemt_stack_7: FunctionArgumentInstantiable { }
extension function_argumemt_stack_8: FunctionArgumentInstantiable { }
extension function_argumemt_stack_9: FunctionArgumentInstantiable { }
extension function_argumemt_stack_10: FunctionArgumentInstantiable { }
extension function_argumemt_stack_11: FunctionArgumentInstantiable { }
extension function_argumemt_stack_12: FunctionArgumentInstantiable { }
extension function_argumemt_stack_13: FunctionArgumentInstantiable { }
extension function_argumemt_stack_14: FunctionArgumentInstantiable { }
extension function_argumemt_stack_15: FunctionArgumentInstantiable { }
extension function_argumemt_stack_16: FunctionArgumentInstantiable { }
extension function_argumemt_stack_17: FunctionArgumentInstantiable { }
extension function_argumemt_stack_18: FunctionArgumentInstantiable { }
extension function_argumemt_stack_19: FunctionArgumentInstantiable { }
extension function_argumemt_stack_20: FunctionArgumentInstantiable { }
extension function_argumemt_stack_21: FunctionArgumentInstantiable { }
extension function_argumemt_stack_22: FunctionArgumentInstantiable { }
extension function_argumemt_stack_23: FunctionArgumentInstantiable { }
extension function_argumemt_stack_24: FunctionArgumentInstantiable { }
extension function_argumemt_stack_25: FunctionArgumentInstantiable { }
extension function_argumemt_stack_26: FunctionArgumentInstantiable { }
extension function_argumemt_stack_27: FunctionArgumentInstantiable { }
extension function_argumemt_stack_28: FunctionArgumentInstantiable { }
extension function_argumemt_stack_29: FunctionArgumentInstantiable { }
extension function_argumemt_stack_30: FunctionArgumentInstantiable { }
extension function_argumemt_stack_31: FunctionArgumentInstantiable { }
extension function_argumemt_stack_32: FunctionArgumentInstantiable { }
extension function_argumemt_stack_33: FunctionArgumentInstantiable { }
extension function_argumemt_stack_34: FunctionArgumentInstantiable { }
extension function_argumemt_stack_35: FunctionArgumentInstantiable { }
extension function_argumemt_stack_36: FunctionArgumentInstantiable { }
extension function_argumemt_stack_37: FunctionArgumentInstantiable { }
extension function_argumemt_stack_38: FunctionArgumentInstantiable { }
extension function_argumemt_stack_39: FunctionArgumentInstantiable { }
extension function_argumemt_stack_40: FunctionArgumentInstantiable { }

extension Sequence where Element == FunctionArgument {

    func stackValues() -> StackValues {
        let size = reduce(0) { $0 + $1.size }
        
        switch size {
        case 0:
            return .empty
        case 1:
            return .ofSize1(function_argumemt_stack_1.instantiate(from: Array(self)))
        case 2:
            return .ofSize2(function_argumemt_stack_2.instantiate(from: Array(self)))
        case 3:
            return .ofSize3(function_argumemt_stack_3.instantiate(from: Array(self)))
        case 4:
            return .ofSize4(function_argumemt_stack_4.instantiate(from: Array(self)))
        case 5:
            return .ofSize5(function_argumemt_stack_5.instantiate(from: Array(self)))
        case 6:
            return .ofSize6(function_argumemt_stack_6.instantiate(from: Array(self)))
        case 7:
            return .ofSize7(function_argumemt_stack_7.instantiate(from: Array(self)))
        case 8:
            return .ofSize8(function_argumemt_stack_8.instantiate(from: Array(self)))
        case 9:
            return .ofSize9(function_argumemt_stack_9.instantiate(from: Array(self)))
        case 10:
            return .ofSize10(function_argumemt_stack_10.instantiate(from: Array(self)))
        case 11:
            return .ofSize11(function_argumemt_stack_11.instantiate(from: Array(self)))
        case 12:
            return .ofSize12(function_argumemt_stack_12.instantiate(from: Array(self)))
        case 13:
            return .ofSize13(function_argumemt_stack_13.instantiate(from: Array(self)))
        case 14:
            return .ofSize14(function_argumemt_stack_14.instantiate(from: Array(self)))
        case 15:
            return .ofSize15(function_argumemt_stack_15.instantiate(from: Array(self)))
        case 16:
            return .ofSize16(function_argumemt_stack_16.instantiate(from: Array(self)))
        case 17:
            return .ofSize17(function_argumemt_stack_17.instantiate(from: Array(self)))
        case 18:
            return .ofSize18(function_argumemt_stack_18.instantiate(from: Array(self)))
        case 19:
            return .ofSize19(function_argumemt_stack_19.instantiate(from: Array(self)))
        case 20:
            return .ofSize20(function_argumemt_stack_20.instantiate(from: Array(self)))
        case 21:
            return .ofSize21(function_argumemt_stack_21.instantiate(from: Array(self)))
        case 22:
            return .ofSize22(function_argumemt_stack_22.instantiate(from: Array(self)))
        case 23:
            return .ofSize23(function_argumemt_stack_23.instantiate(from: Array(self)))
        case 24:
            return .ofSize24(function_argumemt_stack_24.instantiate(from: Array(self)))
        case 25:
            return .ofSize25(function_argumemt_stack_25.instantiate(from: Array(self)))
        case 26:
            return .ofSize26(function_argumemt_stack_26.instantiate(from: Array(self)))
        case 27:
            return .ofSize27(function_argumemt_stack_27.instantiate(from: Array(self)))
        case 28:
            return .ofSize28(function_argumemt_stack_28.instantiate(from: Array(self)))
        case 29:
            return .ofSize29(function_argumemt_stack_29.instantiate(from: Array(self)))
        case 30:
            return .ofSize30(function_argumemt_stack_30.instantiate(from: Array(self)))
        case 31:
            return .ofSize31(function_argumemt_stack_31.instantiate(from: Array(self)))
        case 32:
            return .ofSize32(function_argumemt_stack_32.instantiate(from: Array(self)))
        case 33:
            return .ofSize33(function_argumemt_stack_33.instantiate(from: Array(self)))
        case 34:
            return .ofSize34(function_argumemt_stack_34.instantiate(from: Array(self)))
        case 35:
            return .ofSize35(function_argumemt_stack_35.instantiate(from: Array(self)))
        case 36:
            return .ofSize36(function_argumemt_stack_36.instantiate(from: Array(self)))
        case 37:
            return .ofSize37(function_argumemt_stack_37.instantiate(from: Array(self)))
        case 38:
            return .ofSize38(function_argumemt_stack_38.instantiate(from: Array(self)))
        case 39:
            return .ofSize39(function_argumemt_stack_39.instantiate(from: Array(self)))
        case 40:
            return .ofSize40(function_argumemt_stack_40.instantiate(from: Array(self)))
        default:
            fatalError()
        }
    }

}
