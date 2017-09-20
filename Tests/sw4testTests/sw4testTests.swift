import XCTest
@testable import sw4test

class sw4testTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(sw4test().text, "<h1>Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
