//
//  VoiceObserver.swift
//  PatternSwift
//
//  Created by Janidu Wanigasuriya on 17/12/2015.
//  Copyright © 2015 Janidu Wanigasuriya. All rights reserved.
//

import Foundation

protocol VoiceCommandObserver {

    func didReceiveVoiceCommand(voiceCommand: String)
}