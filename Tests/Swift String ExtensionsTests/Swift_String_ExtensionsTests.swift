import XCTest
@testable import Swift_String_Extensions

final class Swift_String_ExtensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Swift_String_Extensions().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
