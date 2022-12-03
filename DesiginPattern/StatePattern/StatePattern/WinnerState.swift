//
//  WinnerState.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

class WinnerState: State {
    var description: String = "보너스 당첨"
    
    let gumballMachine: GumballMachine
    
    init(_ gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        print("알맹이를 내보내고 있습니다.")
    }
    
    func ejectQuarter() {
        print("이미 알맹이를 뽑으셨습니다.")
    }
    
    func turnCrank() {
        print("손잡이는 한 번만 돌려주세요.")
    }
    
    func dispense() {
        gumballMachine.releaseBall()
        if gumballMachine.count == 0 {
            gumballMachine.setState(gumballMachine.soldOutState)
        } else {
            gumballMachine.releaseBall()
            print("축하드립니다! 알맹이를 하나 더 받으실 수 있습니다.")
            if gumballMachine.count > 0 {
                gumballMachine.setState(gumballMachine.noQuarterState)
            } else {
                print("더 이상 알맹이가 없습니다.")
                gumballMachine.setState(gumballMachine.soldOutState)
            }
        }
    }
}
