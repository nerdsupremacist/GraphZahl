
import Foundation

/**
# Conditional Conformance

All arrays of values that are resolved, can be resolved
*/
extension Array: Resolvable where Element: Resolvable { }
