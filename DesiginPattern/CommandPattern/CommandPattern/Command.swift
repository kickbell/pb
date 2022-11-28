//
//  Command.swift
//  CommandPattern
//
//  Created by jc.kim on 11/28/22.
//

import Foundation

protocol Command {
    func execute()
    func undo()
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
    func undo() { }
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
    
    func undo() {
        light.off()
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
    
    func undo() {
        light.on()
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
    
    func undo() {
        garageDoor.close()
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
    
    func undo() {
        garageDoor.open()
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
    
    func undo() {
        stereo.off()
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
    
    func undo() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(11)
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
    
    func undo() {
        ceillingFan.off()
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
    
    func undo() {
        ceillingFan.on()
    }
}

class CeillingFanHighCommand: Command {
    let ceillingFan: CeilingFan
    var prevSpeed: CeilingFan.Speed
    
    init(_ ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
        self.prevSpeed = ceillingFan.speed
    }
    
    func execute() {
        prevSpeed = ceillingFan.getSpeed(ceillingFan.speed)
        ceillingFan.high()
    }
    
    func undo() {
        switch prevSpeed {
        case .OFF:
            ceillingFan.off()
        case .LOW:
            ceillingFan.low()
        case .MEDIUM:
            ceillingFan.medium()
        case .HIGH:
            ceillingFan.high()
        }
    }
}

class CeillingFanMediumCommand: Command {
    let ceillingFan: CeilingFan
    var prevSpeed: CeilingFan.Speed
    
    init(_ ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
        self.prevSpeed = ceillingFan.speed
    }
    
    func execute() {
        prevSpeed = ceillingFan.getSpeed(ceillingFan.speed)
        ceillingFan.medium()
    }
    
    func undo() {
        switch prevSpeed {
        case .OFF:
            ceillingFan.off()
        case .LOW:
            ceillingFan.low()
        case .MEDIUM:
            ceillingFan.medium()
        case .HIGH:
            ceillingFan.high()
        }
    }
}

class CeillingFanLowCommand: Command {
    let ceillingFan: CeilingFan
    var prevSpeed: CeilingFan.Speed
    
    init(_ ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
        self.prevSpeed = ceillingFan.speed
    }
    
    func execute() {
        prevSpeed = ceillingFan.getSpeed(ceillingFan.speed)
        ceillingFan.low()
    }
    
    func undo() {
        switch prevSpeed {
        case .OFF:
            ceillingFan.off()
        case .LOW:
            ceillingFan.low()
        case .MEDIUM:
            ceillingFan.medium()
        case .HIGH:
            ceillingFan.high()
        }
    }
}
