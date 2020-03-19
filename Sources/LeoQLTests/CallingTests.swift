
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
        let cases: [MyEnum] = [.second]
        let string = try method.call(receiver: instance, arguments: [cases]) as! String
        XCTAssertEqual(string, "second")
    }
}

enum MyEnum: String {
    case first
    case second
}

class MyClass {
    func doit(string: String = "Hello World") -> String {
        return string
//        return cases.map(\.rawValue).joined()
    }
}
