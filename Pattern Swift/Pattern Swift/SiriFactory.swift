//
//  SiriFactory.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 18/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

struct SiriFactory: AbstractFactory {
    
    func createSiri() -> Siri? {
        return Siri()
    }
    
    func createCortana() -> Cortana? {
        return nil
    }
}