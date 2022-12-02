//
//  HasQuarterState.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

class HasQuarterState: State {
    let gumballMachine: GumballMachine
    
    init(_ gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        print("동전은 한 개만 넣어주세요.")
    }
    
    func ejectQuarter() {
        print("동전이 반환됩니다.")
        gumballMachine.setState(gumballMachine.noQuarterState)
    }
    
    func turnCrank() {
        print("손잡이를 돌리셨습니다.")
        gumballMachine.setState(gumballMachine.soldState)
    }
    
    func dispense() {
        print("알맹이를 내보낼 수 없습니다.")
    }
}
