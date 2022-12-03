//
//  State.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

protocol State {
    var description: String { get }
    
    func insertQuarter() //동전 넣기
    func ejectQuarter() //동전 반환하기
    func turnCrank() //크랭크(손잡이) 돌리기
    func dispense() //알맹이 내보내기
    func refill() //알맹이 리필하기
}

extension State {
    func refill() { }
}
