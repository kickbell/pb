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

/*
 ------ 리모컨 ------
 [slot 0] LightOnCommand                 LightOffCommand
 [slot 1] CeillingFanOnCommand           CeillingFanOffCommand
 [slot 2] GarageDoorOpenCommand          GarageDoorCloseCommand
 [slot 3] StereoOnWithCDCommand          StereoOffCommand
 [slot 4] NoCommand                      NoCommand
 [slot 5] NoCommand                      NoCommand
 [slot 6] NoCommand                      NoCommand

 조명이 켜졌습니다.
 거실 선풍기가 켜졌습니다.
 차고 문이 열렸습니다.
 거실 오디오가 켜졌습니다.
 거실 오디오에서 CD가 재생됩니다.
 거실 오디오의 볼륨이 11으로 설정되었습니다.
 */
