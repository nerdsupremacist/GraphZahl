
import Foundation

/**
# Page Info

This is the information about the current Page.
This Information includes the start and end cursor and whether or not there's adjacent pages.
*/
public class PageInfo: GraphQLObject {
    let hasNextPage: Bool
    let hasPreviousPage: Bool

    let startCursor: String?
    let endCursor: String?

    /**
     Initializer for Page Info

     - Parameters:
         - hasNextPage: is there a page after this one
         - hasPreviousPage: is there a page before this one
         - startCursor: What's the cursor of the first item. (`nil` if empty)
         - endCursor: What's the cursor of the last item. (`nil` if empty)
     */
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
