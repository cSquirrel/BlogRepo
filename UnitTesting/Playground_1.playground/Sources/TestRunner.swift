import Foundation
import XCTest

public func runTests(_ testClass: AnyClass) {

    print("\nRunning test suite `\(testClass)`")
    print("--------------------")
    
    let tests = testClass as! XCTestCase.Type
    let testSuite = tests.defaultTestSuite
    testSuite.run()
    let run = testSuite.testRun as! XCTestSuiteRun
    
    print("--------------------")
    print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")

}
