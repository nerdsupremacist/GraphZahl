
import Foundation
import NIO

/**
# Conditional Conformance

All futures of values that are resolved, can be resolved
*/
extension EventLoopFuture: Resolvable where Value: Resolvable { }
