
import Foundation

public protocol IndexCursorTranslator {
    init()
    mutating func cursor(for index: Int) throws -> String
    mutating func index(for cursor: String) throws -> Int
}

public struct StandardIndexCursorTranslator: IndexCursorTranslator {
    private var cursors: [String : Int] = [:]

    enum Error: Swift.Error {
        case unrecognizedCursor(String, for: StandardIndexCursorTranslator)
    }

    public init() { }

    public mutating func cursor(for index: Int) throws -> String {
        var string = index.obfuscate()

        // Remove clashes
        while let clashingIndex = cursors[string], clashingIndex != index {
            string = string.obfuscate()
        }

        if cursors[string] == nil {
            cursors[string] = index
        }

        return string
    }

    public func index(for cursor: String) throws -> Int {
        guard let index = cursors[cursor] else {
            throw Error.unrecognizedCursor(cursor, for: self)
        }
        return index
    }
}

extension Hashable {

    fileprivate func obfuscate() -> String {
        var hasher = Hasher()
        hash(into: &hasher)
        return withUnsafeBytes(of: hasher.finalize()) { Data(buffer: $0.bindMemory(to: UInt8.self)).base64EncodedString() }
    }

}
