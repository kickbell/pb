//
//  NoQuarterState.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

class NoQuarterState: State {
    var description: String = "동전 투입 대기중"
    
    let gumballMachine: GumballMachine
    
    init(_ gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        print("동전을 넣으셨습니다.")
        gumballMachine.setState(gumballMachine.hasQuarterState)
    }
    
    func ejectQuarter() {
        print("동전을 넣어주세요.")
    }
    
    func turnCrank() {
        print("동전을 넣어주세요.")
    }
    
    func dispense() {
        print("동전을 넣어주세요.")
    }
}
