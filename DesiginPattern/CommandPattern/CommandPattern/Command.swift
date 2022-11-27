//
//  Command.swift
//  CommandPattern
//
//  Created by jc.kim on 11/28/22.
//

import Foundation

protocol Command {
    func execute()
}

class LightOnCommand: Command {
    let light: Light
    
    init(_ light: Light) {
        self.light = light
    }
    
    func execute() {
        light.on()
    }
}

class GarageDoorOpenCommand {
    let garageDoor: GarageDoor
    
    init(_ garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    func execute() {
        garageDoor.open()
    }
}


