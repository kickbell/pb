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
    var count = 0
    var description: String {
        return "\n주식회사 왕뽑기\n[ 최신형 뽑기 기계 ]\n남은 개수: \(count)개\n현재 상태: \(state.description)\n"
    }
    lazy var state: State = count > 0 ? noQuarterState : soldOutState
    
    lazy var soldOutState = SoldOutState(self)
    lazy var noQuarterState = NoQuarterState(self)
    lazy var hasQuarterState = HasQuarterState(self)
    lazy var soldState = SoldState(self)
    lazy var winnerState = WinnerState(self)
    
    init(_ numberGumballs: Int) {
        self.count = numberGumballs
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
    
    func refill(_ count: Int) {
        self.count += count
        print("\(self.count)개의 알맹이가 리필되었습니다.")
        state.refill()
    }
    
}
