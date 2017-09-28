import XCTest
@testable import sw4test
import PythonAPI

class sw4testTests: XCTestCase {

  override func setUp() {
    Py_Initialize()
  }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let sw = sw4test()
        XCTAssertEqual(sw.text, "<h1>Hello, World!")
        XCTAssertTrue(sw.version.hasPrefix("2.7"))
        XCTAssertNotNil(sw.email)
        XCTAssertNotNil(sw.cpu)
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
