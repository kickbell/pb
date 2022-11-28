//
//  main.swift
//  CommandPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

var remote = RemoteControl()

let light = Light()
let tv = TV()
let stereo = Stereo()
let hottub = Hottub() //온수 욕조

let lightOn = LightOnCommand(light)
let stereoOn = StereoOnWithCDCommand(stereo)
let tvOn = TVOnCommand(tv)
let hottubOn = HottubOnCommand(hottub)

let lightOff = LightOffCommand(light)
let stereoOff = StereoOffCommand(stereo)
let tvOff = TVOffCommand(tv)
let hottubOff = HottubOffCommand(hottub)

let partyOn: [Command] = [ lightOn, stereoOn, tvOn, hottubOn ]
let partyOff: [Command] = [ lightOff, stereoOff, tvOff, hottubOff ]
let partyOnMacro = MacroCommand(commands: partyOn)
let partyOffMacro = MacroCommand(commands: partyOff)

remote.setCommand(0, partyOnMacro, partyOffMacro)

remote.toString().forEach { print($0) }
print("--- 매크로 ON ---")
remote.onButtonWasPushed(0)
print("--- 매크로 OFF ---")
remote.offButtonWasPushed(0)
print("--- 매크로 Undo ---")
remote.undoButtonWasPushed()

/*
 ------ 리모컨 ------
 [slot 0] MacroCommand                   MacroCommand
 [slot 1] NoCommand                      NoCommand
 [slot 2] NoCommand                      NoCommand
 [slot 3] NoCommand                      NoCommand
 [slot 4] NoCommand                      NoCommand
 [slot 5] NoCommand                      NoCommand
 [slot 6] NoCommand                      NoCommand
 [ undo ] NoCommand

 --- 매크로 ON ---
 조명이 켜졌습니다.
 거실 오디오가 켜졌습니다.
 거실 오디오에서 CD가 재생됩니다.
 거실 오디오의 볼륨이 11으로 설정되었습니다.
 거실 TV가 켜졌습니다.
 욕조가 켜졌습니다.
 욕조 온도를 40도로 설정합니다.
 --- 매크로 OFF ---
 조명이 꺼졌습니다.
 거실 오디오가 꺼졌습니다.
 거실 TV가 꺼졌습니다.
 욕조가 꺼졌습니다.
 --- 매크로 Undo ---
 조명이 켜졌습니다.
 거실 오디오가 켜졌습니다.
 거실 오디오에서 CD가 재생됩니다.
 거실 오디오의 볼륨이 11으로 설정되었습니다.
 거실 TV가 켜졌습니다.
 욕조가 켜졌습니다.
 Program ended with exit code: 0
 */



//let ceilingFan = CeilingFan()
//let ceillingFanOnCommand = CeillingFanOnCommand(ceilingFan)
//let ceillingFanOffCommand = CeillingFanOffCommand(ceilingFan)
//let ceillingFanLowCommand = CeillingFanLowCommand(ceilingFan)
//let ceillingFanMediumCommand = CeillingFanMediumCommand(ceilingFan)
//let ceillingFanHighCommand = CeillingFanHighCommand(ceilingFan)
//
//remote.setCommand(0, ceillingFanMediumCommand, ceillingFanOffCommand)
//remote.setCommand(1, ceillingFanHighCommand, ceillingFanOffCommand)
//remote.setCommand(2, ceillingFanLowCommand, ceillingFanOffCommand)
//
//remote.onButtonWasPushed(0)
//remote.offButtonWasPushed(0)
//remote.toString().forEach { print($0) }
//remote.undoButtonWasPushed()
//remote.onButtonWasPushed(1)
//remote.toString().forEach { print($0) }
//remote.undoButtonWasPushed()
/*
 거실 선풍기 속도는 OFF입니다.
 거실 선풍기 속도가 MEDIUM로 설정되었습니다.
 거실 선풍기가 꺼졌습니다.
 ------ 리모컨 ------
 [slot 0] CeillingFanMediumCommand       CeillingFanOffCommand
 [slot 1] CeillingFanHighCommand         CeillingFanOffCommand
 [slot 2] CeillingFanLowCommand          CeillingFanOffCommand
 [slot 3] NoCommand                      NoCommand
 [slot 4] NoCommand                      NoCommand
 [slot 5] NoCommand                      NoCommand
 [slot 6] NoCommand                      NoCommand
 [ undo ] CeillingFanOffCommand

 거실 선풍기 속도가 MEDIUM로 설정되었습니다.
 거실 선풍기 속도는 MEDIUM입니다.
 거실 선풍기 속도가 HIGH로 설정되었습니다.
 ------ 리모컨 ------
 [slot 0] CeillingFanMediumCommand       CeillingFanOffCommand
 [slot 1] CeillingFanHighCommand         CeillingFanOffCommand
 [slot 2] CeillingFanLowCommand          CeillingFanOffCommand
 [slot 3] NoCommand                      NoCommand
 [slot 4] NoCommand                      NoCommand
 [slot 5] NoCommand                      NoCommand
 [slot 6] NoCommand                      NoCommand
 [ undo ] CeillingFanHighCommand

 거실 선풍기 속도가 MEDIUM로 설정되었습니다.
 Program ended with exit code: 0
 */




//let light = Light()
//let ceilingFan = CeilingFan()
//let garageDoor = GarageDoor()
//let stereo = Stereo()
//
//let lightOnCommand = LightOnCommand(light)
//let lightOffCommand = LightOffCommand(light)
//let ceillingFanOnCommand = CeillingFanOnCommand(ceilingFan)
//let ceillingFanOffCommand = CeillingFanOffCommand(ceilingFan)
//let garageDoorOpenCommand = GarageDoorOpenCommand(garageDoor)
//let garageDoorCloseCommand = GarageDoorCloseCommand(garageDoor)
//let stereoOnWithCDCommand = StereoOnWithCDCommand(stereo)
//let stereoOffCommand = StereoOffCommand(stereo)
//
//
//remote.setCommand(0, lightOnCommand, lightOffCommand)
//remote.setCommand(1, ceillingFanOnCommand, ceillingFanOffCommand)
//remote.setCommand(2, garageDoorOpenCommand, garageDoorCloseCommand)
//remote.setCommand(3, stereoOnWithCDCommand, stereoOffCommand)
//
//remote.toString().forEach { print($0) }
//
//remote.undoButtonWasPushed() //아무 일도 일어나지 않음. NoCommand 호출
//remote.onButtonWasPushed(0)
//remote.undoButtonWasPushed()
//remote.onButtonWasPushed(1)
//remote.undoButtonWasPushed()
//remote.onButtonWasPushed(2)
//remote.undoButtonWasPushed()
//remote.onButtonWasPushed(3)
//remote.undoButtonWasPushed()
//remote.undoButtonWasPushed() //마지막 녀석이 저장되어있기 때문에 오디오 꺼짐 2번 호출

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
 조명이 꺼졌습니다.
 거실 선풍기가 켜졌습니다.
 거실 선풍기가 꺼졌습니다.
 차고 문이 열렸습니다.
 차고 문이 닫혔습니다.
 거실 오디오가 켜졌습니다.
 거실 오디오에서 CD가 재생됩니다.
 거실 오디오의 볼륨이 11으로 설정되었습니다.
 거실 오디오가 꺼졌습니다.
 거실 오디오가 꺼졌습니다.
 Program ended with exit code: 0
 */
