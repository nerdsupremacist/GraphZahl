
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
                "__typename": "Foo",
                "foo": "Foo"
            ]
        ]

        XCTAssertEqual(expectedData, result.data)
    }

}

class Schema: GraphZahl.GraphQLSchema {

    class Query: QueryType {
        func union() -> Union {
            return .foo(Foo(foo: "Foo"))
        }

        required init(viewerContext: ()) { }
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
