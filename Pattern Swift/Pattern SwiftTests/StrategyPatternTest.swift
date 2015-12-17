//
//  StrategyPatternTest.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 17/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import XCTest

class StrategyPatternTest: XCTestCase {
    
    let siri = Siri()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSiriLatinDanceBehaviorStrategy() {
        siri.danceBehavior = LatinDance()
        XCTAssertTrue(siri.danceBehavior?.dance() == "I'm dancing Latin")
    }
    
    func testSiriFolkDanceBehaviorStrategy() {
        siri.danceBehavior = FolkDance()
        XCTAssertTrue(siri.danceBehavior?.dance() == "I'm dancing Folk")
    }
    
}
