
import XCTest
import Runtime
import NIO
import ContextKit
@testable import GraphZahl
import GraphQL

class SchemaResolutionTests: XCTestCase {

    func testUnion() throws {
        let query = """
        {
            union {
                __typename
                ... on Foo {
                    foo
                }
                ... on Bar {
                    bar
                }
                ... on Baz {
                    baz
                }
            }
        }
        """

        let result = try Schema.perform(request: query).wait()

        let expectedData: Map = [
            "union" : [
                "__typename": "Bar",
                "bar": 42,
            ]
        ]

        XCTAssertEqual(expectedData, result.data)
    }

    func testDelegatedOutputs() throws {
        struct SomeInt: DelegatedOutputResolvable {
            let int: Int

            func resolve(source: Any, arguments: [String : Map], context: MutableContext, eventLoop: EventLoopGroup) throws -> some OutputResolvable {
                return int
            }
        }

        var context = Resolution.Context.empty(viewerContextType: Int.self, viewerContext: 42)
        let output = try SomeInt.resolve(using: &context)
        guard let nonNull = output as? GraphQLNonNull else {
            XCTFail("outptut of some int is nullable")
            return
        }
        guard let scalar = nonNull.ofType as? GraphQLScalarType else {
            XCTFail("outptut of some int is not a scalar")
            return
        }
        XCTAssertEqual(scalar, GraphQLInt)
    }

    func testKeypaths() throws {
        let query = """
        {
            foo(filter: Foo, equals: "Foo1") {
                foo
            }
        }
        """

        let result = try Schema.perform(request: query).wait()

        let expectedData: Map = [
            "foo" : [
                ["foo": "Foo1"]
            ]
        ]

        XCTAssertEqual(expectedData, result.data)
    }
    
    func testIdAndDateCombination() throws {
        let query = """
        {
            thing(id: "1E9FF7FB-7424-4319-9BFA-470F4C6549FA", date: "2020-06-18T12:54:13Z")
        }
        """

        let result = try Schema.perform(request: query).wait()

        let expectedData: Map = [
            "thing" : 42,
        ]

        XCTAssertEqual(expectedData, result.data)
    }

}

class Schema: GraphZahl.GraphQLSchema {

    class Query: QueryType {
        func union() -> Union {
            return .bar(Bar(bar: 42))
        }
        
        func thing(id: UUID, date: Date) -> Int {
            return 42
        }

        func foo(filter: KeyPath<Foo, String>, equals: String) -> [Foo] {
            return [
                Foo(foo: "Foo"),
                Foo(foo: "Foo1"),
                Foo(foo: "Foo2"),
            ].filter { $0[keyPath: filter] == equals }
        }

        required init(viewerContext: ()) { }
    }

}

private let dateFormatter = ISO8601DateFormatter()

extension Date: GraphQLScalar {
    public init(scalar: ScalarValue) throws {
        guard let date = dateFormatter.date(from: try scalar.string()) else {
            throw ScalarTypeError.valueFailedInnerTypeConstraints(scalar, forType: Date.self)
        }
        self = date
    }
    public func encodeScalar() throws -> ScalarValue {
        return try dateFormatter.string(from: self).encodeScalar()
    }
}

class Foo: GraphQLObject {
    let foo: String

    init(foo: String) {
        self.foo = foo
    }
}

class Bar: GraphQLObject {
    let bar: Int

    init(bar: Int) {
        self.bar = bar
    }
}

class Baz: GraphQLObject {
    let baz: Bool

    init(baz: Bool) {
        self.baz = baz
    }
}

enum Union: GraphQLUnion {
    case foo(Foo)
    case bar(Bar)
    case baz(Baz)
}
