import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Swift_String_ExtensionsTests.allTests),
    ]
}
#endif
