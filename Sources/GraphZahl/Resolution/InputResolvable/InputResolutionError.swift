
import Foundation

public enum InputResolutionError: Error {
    case cannotInstantiateTypeFromRawValue(InputResolvable.Type, rawValue: Any)
}
