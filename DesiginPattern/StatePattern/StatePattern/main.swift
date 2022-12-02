//
//  main.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

let gumballMachine = GumballMachine(5)

//print(gumballMachine)
//print(gumballMachine.description)
//
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//
//print(gumballMachine.description)
//
//gumballMachine.insertQuarter()
//gumballMachine.ejectQuarter()
//gumballMachine.turnCrank()
//
//print(gumballMachine.description)
//
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//gumballMachine.ejectQuarter()
//
//print(gumballMachine.description)
//
//gumballMachine.insertQuarter()
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//gumballMachine.insertQuarter()
//gumballMachine.turnCrank()
//
//print(gumballMachine.description)

/*
 StatePattern.GumballMachine

 주식회사 왕뽑기
 [ 최신형 뽑기 기계 ]
 남은 개수: 5개
 현재 상태: 동전 투입 대기중

 동전이 투입되었습니다.
 손잡이를 돌리셨습니다.
 알맹이를 내보내고 있습니다.

 주식회사 왕뽑기
 [ 최신형 뽑기 기계 ]
 남은 개수: 4개
 현재 상태: 동전 투입 대기중

 동전이 투입되었습니다.
 동전이 반환됩니다.
 동전을 넣어주세요.

 주식회사 왕뽑기
 [ 최신형 뽑기 기계 ]
 남은 개수: 4개
 현재 상태: 동전 투입 완료

 동전은 한 개만 넣어주세요.
 손잡이를 돌리셨습니다.
 알맹이를 내보내고 있습니다.
 동전이 투입되었습니다.
 손잡이를 돌리셨습니다.
 알맹이를 내보내고 있습니다.
 동전이 넣어주세요.

 주식회사 왕뽑기
 [ 최신형 뽑기 기계 ]
 남은 개수: 2개
 현재 상태: 동전 투입 완료

 동전은 한 개만 넣어주세요.
 동전은 한 개만 넣어주세요.
 손잡이를 돌리셨습니다.
 알맹이를 내보내고 있습니다.
 동전이 투입되었습니다.
 손잡이를 돌리셨습니다.
 알맹이를 내보내고 있습니다.
 더 이상 알맹이가 없습니다.
 매진되었습니다. 다음 기회에 이용해주세요.
 매진되었습니다.

 주식회사 왕뽑기
 [ 최신형 뽑기 기계 ]
 남은 개수: 0개
 현재 상태: 매진

 Program ended with exit code: 0
 */


