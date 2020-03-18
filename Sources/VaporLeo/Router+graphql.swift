
import LeoQL
import GraphQL
import Vapor

extension RoutesBuilder {

    public func graphql<S: Schema>(path: [PathComponent],
                                   use schema: S.Type,
                                   includeGraphiQL: GraphiQLEnabled = false,
                                   viewerContext: @escaping (Request) throws -> EventLoopFuture<S.ViewerContext>) {

        add(S.route(at: path, viewerContext: viewerContext))

        switch includeGraphiQL {
        case .always:
            addGraphiQL(path: path)
        case .onlyInDevelopment where try! Environment.detect() == .development:
            addGraphiQL(path: path)
        case .never, .onlyInDevelopment:
            break
        }

    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type,
                                   includeGraphiQL: GraphiQLEnabled = false,
                                   viewerContext: @escaping (Request) throws -> EventLoopFuture<S.ViewerContext>) {

        graphql(path: path, use: schema, includeGraphiQL: includeGraphiQL, viewerContext: viewerContext)
    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type,
                                   includeGraphiQL: GraphiQLEnabled = false,
                                   viewerContext: @escaping (Request) throws -> S.ViewerContext) {

        graphql(path: path, use: schema, includeGraphiQL: includeGraphiQL) { $0.eventLoop.makeSucceededFuture(try viewerContext($0)) }
    }

    public func graphql<S: Schema>(path: PathComponent...,
                                   use schema: S.Type,
                                   includeGraphiQL: GraphiQLEnabled = false) where S.ViewerContext == Void {

        graphql(path: path, use: schema, includeGraphiQL: includeGraphiQL) { $0.eventLoop.makeSucceededFuture(()) }
    }

}

extension RoutesBuilder {

    private func addGraphiQL(path: [PathComponent]) {
        let joinedPath = path.map { $0.description }.joined(separator: "/")
        let html = """
            <html>
              <head>
                <title>GraphiQL</title>
                <link href="https://unpkg.com/graphiql/graphiql.min.css" rel="stylesheet" />
              </head>
              <body style="margin: 0;">
                <div id="graphiql" style="height: 100vh;"></div>

                <script
                  crossorigin
                  src="https://unpkg.com/react/umd/react.production.min.js"
                ></script>
                <script
                  crossorigin
                  src="https://unpkg.com/react-dom/umd/react-dom.production.min.js"
                ></script>
                <script
                  crossorigin
                  src="https://unpkg.com/graphiql/graphiql.min.js"
                ></script>

                <script>
                  const graphQLFetcher = graphQLParams =>
                    fetch('/\(joinedPath)', {
                      method: 'post',
                      headers: { 'Content-Type': 'application/json' },
                      body: JSON.stringify(graphQLParams),
                    })
                      .then(response => response.json())
                      .catch(() => response.text());
                  ReactDOM.render(
                    React.createElement(GraphiQL, { fetcher: graphQLFetcher }),
                    document.getElementById('graphiql'),
                  );
                </script>
              </body>
            </html>
        """

        let response = GraphiQLResponse(html: html)
        get(path) { _ in response }
    }

}

private struct GraphiQLResponse: ResponseEncodable {
    let html: String

    func encodeResponse(for request: Request) -> EventLoopFuture<Response> {
        let body = Response.Body(string: html)
        let response = Response(status: .ok, headers: ["Content-Type": "text/html"], body: body)
        return response.encodeResponse(for: request)
    }

}
