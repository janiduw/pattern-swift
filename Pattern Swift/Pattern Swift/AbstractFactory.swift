//
//  AbstractFactory.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 18/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

protocol AbstractFactory {
    func createSiri() -> Siri?
    func createCortana() -> Cortana?
}
