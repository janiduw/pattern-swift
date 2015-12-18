//
//  ObserverPatternTest.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 17/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import XCTest

class ObserverPatternTest: XCTestCase {
    
    var siri: Siri = Siri()
    
    override func setUp() {
        super.setUp()
        siri = Siri()
    }
    
    class TestObserver: VoiceCommandObserver {
        func didReceiveVoiceCommand(voiceCommand: String) {
            XCTAssertTrue(voiceCommand == "Hey Siri")
        }
    }
    
    func testAddObserver() {
        siri.addObserver(TestObserver())
        XCTAssertFalse(siri.voiceCommandObservers.count == 0)
    }
    
    func testRemoveObserver() {
        let testObsv = TestObserver()
        siri.addObserver(testObsv)
        XCTAssertTrue(siri.voiceCommandObservers.count == 1)
        siri.removeObserver(testObsv)
        XCTAssertTrue(siri.voiceCommandObservers.count == 0)
    }
    
    func testNotifyNewVoiceCommand() {
        siri.addObserver(TestObserver())
        siri.notifyNewVoiceCommand()
    }

}
