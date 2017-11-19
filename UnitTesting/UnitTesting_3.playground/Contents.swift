import UIKit
import XCTest

// This is a class I want to test
class MyClock {
    
    private var alarmDate:Date?
    
    // Simple method to set alarm date
    //
    // @param   date a Date object pointing to future. Past alarm date is not accepted
    // @returns true if alarm data is accepted and set, false otherwise. can be discarded
    @discardableResult func setAlarm(date: Date) -> Bool {
        
        let validDate = date > Date()
        guard validDate else { return false }
        
        alarmDate = date
        return true
    }
    
    // Tells if alarm date is set
    func isAlarmSet() -> Bool {
        // TODO
        return true
    }
}

// This is a set of tests to verify if the class' implementation meets the expectations
class MyClockTests: XCTestCase {
    
    func testSetAlarmFromFuture() {
        
        // prepare
        let clock = MyClock()
        // this date points to 'now'
        let now = Date()
        // add 100 seconds to point to future
        let alarmDate = Date().addingTimeInterval(100)
        
        // execute
        let result = clock.setAlarm(date: alarmDate)
        
        // verify
        XCTAssertTrue(result, "Should set alarm")
    }
    
    func testSetAlarmFromPast() {
        
        // prepare
        let clock = MyClock()
        // this date points to 'now'
        let now = Date()
        // add 100 seconds to point to past
        let alarmDate = Date().addingTimeInterval(-100)
        
        // execute
        let result = clock.setAlarm(date: alarmDate)
        
        // verify
        XCTAssertFalse(result, "Should not set alarm")
    }
    
    func testIsSetAlarmFromFuture() {
        
        // prepare
        let clock = MyClock()
        // this date points to 'now'
        let now = Date()
        // add 100 seconds to point to future
        let alarmDate = Date().addingTimeInterval(100)
        clock.setAlarm(date: alarmDate)
        
        // execute
        let result = clock.isAlarmSet()
        
        // verify
        XCTAssertTrue(result, "Should set alarm")
    }
    
    func testIsSetAlarmFromPast() {
        
        // prepare
        let clock = MyClock()
        // this date points to 'now'
        let now = Date()
        // add 100 seconds to point to past
        let alarmDate = Date().addingTimeInterval(-100)
        clock.setAlarm(date: alarmDate)
        
        // execute
        let result = clock.isAlarmSet()
        
        // verify
        XCTAssertFalse(result, "Should not set alarm")
    }
    
    func testIsSetAlarmInitialState() {
        
        // prepare
        let clock = MyClock()
        
        // execute
        let result = clock.isAlarmSet()
        
        // verify
        XCTAssertFalse(result, "Should not set alarm")
    }
}

runTests(MyClockTests.self)
