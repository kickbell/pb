//
//  GumballMachine.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation


/*
 우리나라가 1,10,50,100,500원 동전이 있듯,
 미국도 그렇게 동전이 있고 이름도 따로 있다고 합니다.
 여기서는 뽑기 한 번 돌리는데 25 cent가 드나보네요.
 1달러가 1300원이니까,, 300원쯤 되는듯?
 
 1 cent = penny(푼돈)
 5 cent = nickel(니켈)
 10 cent = dime(다임)
 25 cent = quarter(쿼터)
 50 cent = half dollar(하프 달러)
 100 cent = dollar(달러)
 */

class GumballMachine {
    var state: State = SoldOutState()
    var count = 0
    
    let soldOutState: SoldOutState
    let noQuarterState: NoQuarterState
    let hasQuarterState: HasQuarterState
    let soldState: SoldState
    
    init(_ numberGumballs: Int) {
        let gumballMachine = GumballMachine(numberGumballs)
        
        self.soldOutState = SoldOutState()
        self.noQuarterState = NoQuarterState(gumballMachine)
        self.hasQuarterState = HasQuarterState()
        self.soldState = SoldState()
        
        self.count = numberGumballs
        state = numberGumballs > 0 ? noQuarterState : soldOutState
    }
    
    //동전 넣기
    func insertQuarter() {
        state.insertQuarter()
    }
    
    //동전 꺼내기
    func ejectQuarter() {
        state.ejectQuarter()
    }
    
    //크랭크(손잡이)를 돌리기
    func turnCrank() {
        state.turnCrank()
        state.dispense()
    }
    
    func setState(_ state: State) {
        self.state = state
    }
    
    func releaseBall() {
        print("알맹이를 내보내고 있습니다.")
        if count > 0 { count -= 1 }
    }
    
//    //제품 내보내기
//    func dispense() {
//        state.dispense()
//    }
}
