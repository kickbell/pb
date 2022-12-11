//
//  DuckSimulator.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class DuckSimulator {
    func simulate(_ duckFactory: AbstractDuckFactory) {
        let mallardDuck: Quackable = duckFactory.createMallardDuck()
        let redheadDuck: Quackable = duckFactory.createRedheadDuck()
        let duckCall: Quackable = duckFactory.createDuckCall()
        let rubberDuck: Quackable = duckFactory.createRubberDuck()
        let gooseDuck: Quackable = duckFactory.createGooseDuck()

        print("오리 시뮬레이션 게임")
        
        simulate(mallardDuck)
        simulate(redheadDuck)
        simulate(duckCall)
        simulate(rubberDuck)
        simulate(gooseDuck)
        
        print("오리가 소리를 낸 횟수: \(QuackCounter.getQuacks()) 회")
    }
    
    func simulate(_ duck: Quackable) {
        duck.quack()
    }
}
