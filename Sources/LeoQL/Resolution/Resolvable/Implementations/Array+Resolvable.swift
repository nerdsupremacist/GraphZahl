
import Foundation

extension Array: Resolvable where Element: Resolvable {

    public static var typeName: String {
        return Element.typeName
    }

}
