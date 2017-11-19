import Foundation
import XCTest

// MARK: -
private class PlaygroundTestObserver : NSObject, XCTestObservation {
    
    @objc func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: Int) {
        print("Test failed on line \(lineNumber): \(testCase.name), \(description)")
    }
}

private struct TestRunner {
    
    init() {
        let observer = PlaygroundTestObserver()
        let center = XCTestObservationCenter.shared
        center.addTestObserver(observer)
    }
    
    func runTests(testClass:AnyClass) {
        print("Running test suite \(testClass)")
        
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite
        testSuite.run()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
    }
}

public func runTests(_ testClass: AnyClass) {

    TestRunner().runTests(testClass: testClass)
}
