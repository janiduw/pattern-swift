//
//  FactoryProducer.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 18/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

struct FactoryProducer {
    
    static func getFactory(factoryType: FactoryTypes) -> AbstractFactory {
        switch factoryType {
        case .SiriFactory:
            return SiriFactory()
        case .CortanaFactory:
            return CortanaFactory()
        }
    }
}
