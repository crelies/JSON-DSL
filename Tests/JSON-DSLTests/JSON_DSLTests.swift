import XCTest
@testable import JSON_DSL

final class JSON_DSLTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(JSON_DSL().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
