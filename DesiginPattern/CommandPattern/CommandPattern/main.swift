//
//  main.swift
//  CommandPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

var remote = RemoteControl()

let light = Light()
let ceilingFan = CeilingFan()
let garageDoor = GarageDoor()
let stereo = Stereo()

let lightOnCommand = LightOnCommand(light)
let lightOffCommand = LightOffCommand(light)
let ceillingFanOnCommand = CeillingFanOnCommand(ceilingFan)
let ceillingFanOffCommand = CeillingFanOffCommand(ceilingFan)
let garageDoorOpenCommand = GarageDoorOpenCommand(garageDoor)
let garageDoorCloseCommand = GarageDoorCloseCommand(garageDoor)
let stereoOnWithCDCommand = StereoOnWithCDCommand(stereo)
let stereoOffCommand = StereoOffCommand(stereo)



remote.setCommand(0, lightOnCommand, lightOffCommand)
remote.setCommand(1, ceillingFanOnCommand, ceillingFanOffCommand)
remote.setCommand(2, garageDoorOpenCommand, garageDoorCloseCommand)
remote.setCommand(3, stereoOnWithCDCommand, stereoOffCommand)

remote.toString().forEach { print($0) }

remote.onButtonWasPushed(0)
remote.onButtonWasPushed(1)
remote.onButtonWasPushed(2)
remote.onButtonWasPushed(3)


