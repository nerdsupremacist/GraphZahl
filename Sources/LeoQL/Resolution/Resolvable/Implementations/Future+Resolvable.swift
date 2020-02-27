
import Foundation
import NIO

extension EventLoopFuture: Resolvable where T: Resolvable {

    public static var typeName: String {
        return T.typeName
    }

}
