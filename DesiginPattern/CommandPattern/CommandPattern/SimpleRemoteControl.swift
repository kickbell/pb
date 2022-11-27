//
//  SimpleRemoteControl.swift
//  CommandPattern
//
//  Created by jc.kim on 11/28/22.
//

import Foundation

class SimpleRemoteControl {
    var slot: Command?
    
    func setCommand(_ command: Command) {
        slot = command
    }
    
    func buttonWasPressed() {
        slot?.execute()
    }
}
