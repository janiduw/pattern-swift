//
//  Siri.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 17/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

class Siri: VoiceAssistant {
    
    var danceBehavior: DanceBehavior?
    var voiceCommandObservers: NSMutableArray = NSMutableArray()
    
    func addObserver(observer: AnyObject) {
        voiceCommandObservers.addObject(observer)
    }
    
    func removeObserver(observer: AnyObject) {
        voiceCommandObservers.removeObject(observer)
    }
    
    func notifyNewVoiceCommand() {
        for observer in voiceCommandObservers {
            if let ob = observer as? VoiceCommandObserver {
                ob.didReceiveVoiceCommand("Hey Siri")
            }
        }
    }
}
