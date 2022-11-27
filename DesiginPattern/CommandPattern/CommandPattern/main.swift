//
//  main.swift
//  CommandPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

let remote = SimpleRemoteControl()
let light = Light()
let lightOnCommand = LightOnCommand(light)

remote.setCommand(lightOnCommand)
remote.buttonWasPressed()
