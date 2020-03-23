
import Foundation

public class PageInfo: GraphQLObject {
    let hasNextPage: Bool
    let hasPreviousPage: Bool

    let startCursor: String?
    let endCursor: String?

    public init(hasNextPage: Bool,
         hasPreviousPage: Bool,
         startCursor: String?,
         endCursor: String?) {

        self.hasNextPage = hasNextPage
        self.hasPreviousPage = hasPreviousPage
        self.startCursor = startCursor
        self.endCursor = endCursor
    }
}
