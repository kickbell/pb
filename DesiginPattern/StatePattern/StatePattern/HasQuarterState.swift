//
//  HasQuarterState.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

class HasQuarterState: State {
    var description: String = "동전 투입 완료"
    
    let randomWinner = Int.random(in: 1...10) //10% 확률 난수 생성
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
        //보너스 발동 조건: 럭키 세븐 == 10% 난수
        if randomWinner == 7 && gumballMachine.count > 1 {
            gumballMachine.setState(gumballMachine.winnerState)
        } else {
            gumballMachine.setState(gumballMachine.soldState)
        }
    }
    
    func dispense() {
        print("알맹이를 내보낼 수 없습니다.")
    }
}
