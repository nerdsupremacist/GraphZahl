
import XCTest
import Runtime
@testable import GraphQL
import NIO
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
        let arguments = [try method.arguments[0].defaultValue()!] as [Any]
        let string = try method.call(receiver: instance, arguments: arguments) as! String
        XCTAssertEqual(string, "firstsecond")
    }

    func testOtherArray() throws {
        let info = try typeInfo(of: MyClass.self)
        let method = info.methods.first { $0.methodName == "doit" }!

        var context = Resolution.Context.empty
        let field = try method.resolve(for: MyClass.self, using: &context)!

        let instance = MyClass()
        let eventLoop = MultiThreadedEventLoopGroup(numberOfThreads: 1)

        let type = try GraphQLObjectType(name: "thing", fields: ["field":field])
        let schema = try GraphQL.GraphQLSchema(query: type)
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

        let string = try field.resolve!(instance, [:] as Map, instance, eventLoop, resolveInfo).wait() as! String
        XCTAssertEqual(string, "firstsecond")
    }
}

enum MyEnum: String, CaseIterable, GraphQLEnum {
    static let mostCases: [MyEnum] = [.first, .second]

    case first
    case second
    case third
}

class MyClass: GraphQLObject {
    func optionals(string: String?) -> String? {
        return string.map { "hello, \($0)" }
    }

    func doit(cases: [MyEnum] = MyEnum.mostCases) -> String {
        return cases.map(\.rawValue).joined()
    }
}
