
import Foundation

/**
# Resolvable

A Type with a possible type name that will be used in GraphQL
*/
public protocol Resolvable {
    /**
     Name that should be used in GraphQL
     */
    static var typeName: String? { get }
}

extension Resolvable {

    /**
     - Warning: default implementation from `GraphZahl`. Do not override unless you know exactly what you are doing.
     */
    public static var typeName: String? {
        return nil
    }

}
