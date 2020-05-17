import XCTest
@testable import Swift_String_Extensions

final class Swift_String_ExtensionsTests: XCTestCase {
    func testNonLettersReplacement() {
        let string = "thx!lol@44"
        let test = try! string.replacingNonLettersWith("_")
        XCTAssertEqual(test, "thx_lol___")
    }

    func testNonAlphaNumericReplacement() {
        let string = "thx!lol@44"
        let test = try! string.replacingCharacters(inSet: CharacterSet.alphanumerics, with: "_")
        XCTAssertEqual(test, "thx_lol_44")
    }

    static var allTests = [
        ("testReplacement", testNonLettersReplacement),
        ("testNonAlphaNumericReplacement", testNonAlphaNumericReplacement)
    ]
}
