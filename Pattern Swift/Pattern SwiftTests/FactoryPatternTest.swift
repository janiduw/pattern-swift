//
//  FactoryPatternTest.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 18/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import XCTest

class FactoryPatternTest: XCTestCase {
    
    var siri: Siri = Siri()
    
    override func setUp() {
        super.setUp()
        siri = Siri()
    }
    
    func testFactoryProducer() {
       XCTAssertNotNil(FactoryProducer.getFactory(.SiriFactory))
         XCTAssertNotNil(FactoryProducer.getFactory(.CortanaFactory))
    }
    
    func testSiriFactoryNotNil() {
        let siriFactory: AbstractFactory = SiriFactory()
        XCTAssertNotNil(siriFactory)
    }
    
    func testSiriFactoryCreatesSiris() {
        let siriFactory: AbstractFactory = SiriFactory()
        XCTAssertNotNil(siriFactory.createSiri())
    }
    
    func testSiriFactoryWillNotCreateCortana() {
        let siriFactory: AbstractFactory = SiriFactory()
        XCTAssertNil(siriFactory.createCortana())
    }

    func testCortanaFactoryNotNil() {
        let cortanaFactory: AbstractFactory = CortanaFactory()
        XCTAssertNotNil(cortanaFactory)
    }
    
    func testCortanaFactoryCreatesCortanas() {
        let siriFactory: AbstractFactory = CortanaFactory()
        XCTAssertNotNil(siriFactory.createCortana())
    }
    
    func testSiriFactoryWillNotCreateSiri() {
        let siriFactory: AbstractFactory = CortanaFactory()
        XCTAssertNil(siriFactory.createSiri())
    }
}
