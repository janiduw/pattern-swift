//
//  CortanaFactory.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 18/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

struct CortanaFactory: AbstractFactory {

    func createSiri() -> Siri? {
        return nil
    }
    
    func createCortana() -> Cortana? {
        return Cortana()
    }
}
