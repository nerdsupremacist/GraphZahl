
import Foundation

/**
# Conditional Conformance

All optionals of values that are resolved, can be resolved
*/
extension Optional: Resolvable where Wrapped: Resolvable { }
