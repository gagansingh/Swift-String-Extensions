import XCTest
@testable import Swift_String_Extensions

final class Swift_String_ExtensionsTests: XCTestCase {
    func testRemovingCharsNotInSet() {
        let string = "thx!lol@44"
        let test = string.removingCharacters(notInSet: CharacterSet.alphanumerics)
        XCTAssertEqual(test, "thxlol44")

        let test2 = string.removingCharacters(notInSet: CharacterSet.alphanumerics, replacedBy: "_")
        XCTAssertEqual(test2, "thx_lol_44")
    }

    static var allTests = [
        ("testRemovingCharsNotInSet", testRemovingCharsNotInSet)
    ]
}
