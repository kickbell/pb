//
//  RemoteControl.swift
//  CommandPattern
//
//  Created by jc.kim on 11/28/22.
//

import Foundation

class RemoteControl {
    var onCommands: [Command] = []
    var offCommands: [Command] = []
    var undoCommand: Command = NoCommand()
    
    init() {
        let noCommand = NoCommand()
        for _ in 0...6 {
            onCommands.append(noCommand)
            offCommands.append(noCommand)
        }
    }
    
    func setCommand(_ slot: Int,
                    _ onCommand: Command,
                    _ offCommand: Command) {
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }
    
    func onButtonWasPushed(_ slot: Int) {
        onCommands[slot].execute()
        undoCommand = onCommands[slot]
    }
    
    func offButtonWasPushed(_ slot: Int) {
        offCommands[slot].execute()
        undoCommand = offCommands[slot]
    }
    
    func undoButtonWasPushed() {
        undoCommand.undo()
    }
    
    func toString() -> [String] {
        var stringBuffer: [String] = []
        stringBuffer.append("------ 리모컨 ------")
        for i in 0...onCommands.count-1 {
            let str = "[slot \(i)] \(onCommands[i].getName()) \(offCommands[i].getName())"
            stringBuffer.append(str)
        }
        stringBuffer.append("[ undo ] \(undoCommand.getName())")
        stringBuffer.append("")
        return stringBuffer
    }
}
