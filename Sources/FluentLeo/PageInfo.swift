
import Foundation
import LeoQL

class PageInfo: Object {
    let hasNextPage: Bool
    let hasPreviousPage: Bool

    let startCursor: String?
    let endCursor: String?

    init(hasNextPage: Bool,
         hasPreviousPage: Bool,
         startCursor: String?,
         endCursor: String?) {

        self.hasNextPage = hasNextPage
        self.hasPreviousPage = hasPreviousPage
        self.startCursor = startCursor
        self.endCursor = endCursor
    }
}
