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
enum State: String {
    case soldOut = "매진"
    case noQuarter = "동전 투입 대기중"
    case hasQuarter = "동전 투입 완료"
    case sold = "알맹이 내보내는 중"
}

class GumballMachine {
    var state: State = .soldOut
    var count = 0
    var description: String {
        return "\n주식회사 왕뽑기\n[ 최신형 뽑기 기계 ]\n남은 개수: \(count)개\n현재 상태: \(state.rawValue)\n"
    }
    
    init(count: Int) {
        self.count = count
        //제품이 1개 이상이면 돈을 넣어주길 기다리는 상태로 할당
        if count > 0 { state = .noQuarter }
    }
    
    //동전 넣기
    func insertQuarter() {
        switch state {
        case .hasQuarter:
            print("동전은 한 개만 넣어주세요.")
        case .noQuarter:
            state = .hasQuarter
            print("동전이 투입되었습니다.")
        case .soldOut:
            print("매진되었습니다. 다음 기회에 이용해주세요.")
        case .sold:
            print("알맹이를 내보내고 있습니다.")
        }
    }
    
    //동전 꺼내기
    func ejectQuarter() {
        switch state {
        case .hasQuarter:
            print("동전이 반환됩니다.")
            state = .noQuarter
        case .noQuarter:
            state = .hasQuarter
            print("동전이 넣어주세요.")
        case .sold:
            print("이미 알맹이를 뽑으셨습니다.")
        case .soldOut:
            print("동전을 넣지 않으셨습니다. 동전이 반환되지 않습니다.")
        }
    }
    
    //크랭크(손잡이)를 돌리기
    func turnCrank() {
        switch state {
        case .sold:
            print("손잡이는 한 번만 돌려주세요.")
        case .noQuarter:
            state = .hasQuarter
            print("동전을 넣어주세요.")
        case .soldOut:
            print("매진되었습니다.")
        case .hasQuarter:
            print("손잡이를 돌리셨습니다.")
            state = .sold
            dispense()
        }
    }
    
    //제품 내보내기
    func dispense() {
        switch state {
        case .sold:
            print("알맹이를 내보내고 있습니다.")
            count -= 1
            if count == 0 {
                print("더 이상 알맹이가 없습니다.")
                state = .soldOut
            } else {
                state = .noQuarter
            }
        case .noQuarter:
            print("동전을 넣어주세요.")
        case .soldOut:
            print("매진되었습니다.")
        case .hasQuarter:
            print("알맹이를 내보낼 수 없습니다.")
        }
    }
}
