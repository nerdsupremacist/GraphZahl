
import XCTest
import Runtime
import NIO
import ContextKit
@testable import GraphQL
@testable import GraphZahl

private let google = URL(string: "https://google.com")!

class CallingTests: XCTestCase {

    static var allTests: [(String, (CallingTests) -> () throws -> Void)] {
        return [
            ("testArray", testArray)
        ]
    }

    // TODO: Fix with https://github.com/nerdsupremacist/GraphZahl/issues/22
    func ignore_testURL() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "url" }!
        let result = try method.call(receiver: instance, arguments: []) as! URL
        XCTAssertEqual(result, google)
    }
    
    func testManyArguments() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "manyArguments" }!
        let arguments = ["One", "Two", "Three", "Four", "Five"]
        let result = try method.call(receiver: instance, arguments: arguments) as! String
        XCTAssertEqual(result, arguments.joined(separator: " "))
    }

    func testEnumCase() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "enumCase" }!
        let result = try method.call(receiver: instance, arguments: []) as! MyEnum
        XCTAssertEqual(result, .first)
    }

    func testOptionalBool() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optionalBool" }!
        let result = try method.call(receiver: instance, arguments: [])
        XCTAssertEqual(result as! Bool, true)
    }

    func testOptionalDouble() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optionalDouble" }!
        let result = try method.call(receiver: instance, arguments: [])
        XCTAssertEqual(result as! Double, 42)
    }

    func testOptionalEnumCase() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optioanlEnumCase" }!
        let result = try method.call(receiver: instance, arguments: []) as! MyEnum
        XCTAssertEqual(result, .first)
    }

    func testOptionalArray() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optionalArray" }!
        let result = try method.call(receiver: instance, arguments: []) as! [String]
        XCTAssertEqual(result, ["Hello World!"])
    }

    func testOptionalClass() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optionalClass" }!
        let result = try method.call(receiver: instance, arguments: [])
        XCTAssert(result as! MyClass === instance)
    }

    func testOptionalString() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "optionalString" }!
        let result = try method.call(receiver: instance, arguments: ["World" as Any])
        XCTAssertEqual(result as! String, "Hello World!")
    }

    func testArray() throws {
        let info = try typeInfo(of: MyClass.self)
        let instance = MyClass()
        let method = info.methods.first { $0.methodName == "doit" }!
        let arguments = [try method.arguments[0].defaultValue()!] as [Any]
        let string = try method.call(receiver: instance, arguments: arguments) as! String
        XCTAssertEqual(string, "firstsecond")
    }

    func testOtherArray() throws {
        let info = try typeInfo(of: MyClass.self)
        let method = info.methods.first { $0.methodName == "doit" }!

        var context = Resolution.Context.empty(viewerContextType: Void.self, viewerContext: ())
        let field = try method.resolve(for: MyClass.self, using: &context)!

        let instance = MyClass()
        let eventLoop = MultiThreadedEventLoopGroup(numberOfThreads: 1)

        let type = try GraphQLObjectType(name: "thing", fields: ["field":field])
        let schema = try GraphQL.GraphQLSchema(query: type)
        let mutableContext = MutableContext()
        let resolveInfo = GraphQLResolveInfo(fieldName: "",
                                             fieldASTs: [],
                                             returnType: GraphQLString,
                                             parentType: type,
                                             path: [],
                                             schema: schema,
                                             fragments: [:],
                                             rootValue: instance,
                                             operation: OperationDefinition(operation: .query, selectionSet: SelectionSet(selections: [])),
                                             variableValues: [:])

        let string = try field.resolve!(instance, [:] as Map, mutableContext, eventLoop, resolveInfo).wait() as! Map
        XCTAssertEqual(try string.stringValue(), "firstsecond")
    }
}

enum MyEnum: String, CaseIterable, GraphQLEnum {
    static let mostCases: [MyEnum] = [.first, .second]

    case first
    case second
    case third
}

class MyClass: GraphQLObject {
    var url: URL {
        return google
    }

    func optionalBool() -> Bool? {
        return true
    }

    func optionalDouble() -> Double? {
        return 42
    }

    func optionalInt() -> Int? {
        return 42
    }

    func optionalClass() -> MyClass? {
        return self
    }

    func optionalString(name: String?) -> String? {
        return name.map { "Hello \($0)!" }
    }

    func optionalArray() -> [String]? {
        return ["Hello World!"]
    }

    func optioanlEnumCase() -> MyEnum? {
        return .first
    }

    func enumCase() -> MyEnum {
        return .first
    }

    func doit(cases: [MyEnum] = MyEnum.mostCases) -> String {
        return cases.map(\.rawValue).joined()
    }
    
    func manyArguments(first: String, second: String, third: String, fourth: String, fifth: String) -> String {
        return [first, second, third, fourth, fifth].joined(separator: " ")
    }
}
