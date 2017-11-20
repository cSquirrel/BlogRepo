import UIKit
import XCTest

/*:
 
 # The Basics of Unit Testing
 Optimized for Xcode 9.1 / Swift 4.0
 
 This playground shows the basic concepts of unit testing
 */

/*:
 > # IMPORTANT: To use **Rx.playground**:
 1. Open **Rx.xcworkspace**.
 1. Build the **RxSwift-macOS** scheme (**Product** → **Build**).
 1. Open **Rx** playground in the **Project navigator**.
 1. Show the Debug Area (**View** → **Debug Area** → **Show Debug Area**).
 ----
 ## Table of Contents:
 1. [Introduction](Introduction)
 1. [Creating and Subscribing to Observables](Creating_and_Subscribing_to_Observables)
 1. [Working with Subjects](Working_with_Subjects)
 1. [Combining Operators](Combining_Operators)
 1. [Transforming Operators](Transforming_Operators)
 1. [Filtering and Conditional Operators](Filtering_and_Conditional_Operators)
 1. [Mathematical and Aggregate Operators](Mathematical_and_Aggregate_Operators)
 1. [Connectable Operators](Connectable_Operators)
 1. [Error Handling Operators](Error_Handling_Operators)
 1. [Debugging Operators](Debugging_Operators)
 */

//: [Next](@next)

//: This is a class defining a set of tests
class MyTests: XCTestCase {
    
/*: This is a single test.
 It is expected to fail */
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
        XCTAssert
    }
}

// Run the tests
runTests(MyTests.self)
