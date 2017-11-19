import UIKit
import XCTest

// This is a class defining a set of tests
class MyTests: XCTestCase {
    
    // This is a single test.
    // It is expected to fail
    func testShouldFail() {
        XCTFail("I'm expecting this to fail")
    }
    
    // This is next test
    // Tests if variable's value is 'true'
    func testIsItTrue() {
        let myVar = true // for fun change the value to false and see what happens
        XCTAssertTrue(myVar, "Expected the value to be `true`")
    }
    
    // Another test
    // Tests if variable's value is '5'
    func testIsItEquals() {
        let myInt = 5 // change the value and see what happens
        XCTAssertEqual(myInt, 5, "Expected the value to be `5`")
    }
}

runTests(MyTests.self)
