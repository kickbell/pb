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

extension Command {
    func getName() -> String {
        var str = String(describing: self).components(separatedBy: ".").last ?? ""
        while str.count < 30 {
            str += " "
        }
        return str
    }
}

class NoCommand: Command {
    func execute() { }
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

class LightOffCommand: Command {
    let light: Light
    
    init(_ light: Light) {
        self.light = light
    }
    
    func execute() {
        light.off()
    }
}

class GarageDoorOpenCommand: Command {
    let garageDoor: GarageDoor
    
    init(_ garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    func execute() {
        garageDoor.open()
    }
}

class GarageDoorCloseCommand: Command {
    let garageDoor: GarageDoor
    
    init(_ garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    func execute() {
        garageDoor.close()
    }
}

class StereoOnWithCDCommand: Command {
    let stereo: Stereo
    
    init(_ stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(11)
    }
}

class StereoOffCommand: Command {
    let stereo: Stereo
    
    init(_ stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo.off()
    }
}

class CeillingFanOnCommand: Command {
    let ceillingFan: CeilingFan
    
    init(_ ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
    }
    
    func execute() {
        ceillingFan.on()
    }
}

class CeillingFanOffCommand: Command {
    let ceillingFan: CeilingFan
    
    init(_ ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
    }
    
    func execute() {
        ceillingFan.off()
    }
}

