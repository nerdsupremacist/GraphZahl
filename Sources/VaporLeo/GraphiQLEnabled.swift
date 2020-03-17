
import Foundation

public enum GraphiQLEnabled {
    case always
    case onlyInDevelopment
    case never
}

extension GraphiQLEnabled: ExpressibleByBooleanLiteral {

    public init(booleanLiteral value: Bool) {
        self = value ? .always : .never
    }

}
