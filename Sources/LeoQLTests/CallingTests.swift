
import XCTest
import Runtime
@testable import LeoQL

class CallingTests: XCTestCase {

    static var allTests: [(String, (CallingTests) -> () throws -> Void)] {
        return [
            ("testArray", testArray)
        ]
    }

    func testArray() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "doit" }!
        let string = try method.call(receiver: instance, arguments: [try method.arguments[0].defaultValue()!]) as! String
        XCTAssertEqual(string, "firstsecond")
    }
}

enum MyEnum: String, CaseIterable {
    case first
    case second
}

class MyClass {
    func doit(cases: [MyEnum] = MyEnum.allCases) -> String {
        return cases.map(\.rawValue).joined()
    }
}
