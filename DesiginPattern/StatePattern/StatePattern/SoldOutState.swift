//
//  SoldOutState.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

class SoldOutState: State {
    var description: String = "매진"
    
    let gumballMachine: GumballMachine
    
    init(_ gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        print("죄송합니다. 매진되었습니다.")
    }
    
    func ejectQuarter() {
        print("동전을 반환할 수 없습니다. 동전을 넣지 않았습니다.")
    }
    
    func turnCrank() {
        print("죄송합니다. 매진되었습니다.")
    }
    
    func dispense() {
        print("알맹이를 내보낼 수 없습니다.")
    }
}
