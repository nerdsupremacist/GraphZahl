
import Foundation

extension Optional: Resolvable where Wrapped: Resolvable {

    public static var typeName: String {
        return Wrapped.typeName
    }

}
