//
//  VoiceAssistant.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 17/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

protocol VoiceAssistant {
    func addObserver(observer: AnyObject)
    func removeObserver(observer: AnyObject)
    func notifyNewVoiceCommand()
}
