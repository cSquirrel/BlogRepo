import UIKit
import XCTest

class MyClock {
    
    private var alarmDate:Date?
    
    func setAlarm(date: Date) -> Bool {
        
        let validDate = date.timeIntervalSince1970 > Date().timeIntervalSince1970
        guard validDate else { return false }
        
        alarmDate = date
        return true
    }

    func isAlarmSet() -> Bool {
        return alarmDate != nil
    }
}

class MyClockTests: XCTestCase {
    
    func testAlarm() throws {
        
        let clock = MyClock()
        let alarmDate = Date()
        
        let result = clock.setAlarm(date: alarmDate)
        
        XCTAssertTrue(result, "Should set alarm")
    }
}

runTests(MyClockTests.self)
