//
//  DuckSimulator.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class DuckSimulator {
    func simulate(_ duckFactory: AbstractDuckFactory) {
//        let mallardDuck: Quackable = duckFactory.createMallardDuck()
        let redheadDuck: Quackable = duckFactory.createRedheadDuck()
        let duckCall: Quackable = duckFactory.createDuckCall()
        let rubberDuck: Quackable = duckFactory.createRubberDuck()
        let gooseDuck: Quackable = duckFactory.createGooseDuck()

        print("오리 시뮬레이션 게임")
        
        let flockOfDucks = Flock()
        flockOfDucks.add(redheadDuck)
        flockOfDucks.add(duckCall)
        flockOfDucks.add(rubberDuck)
        flockOfDucks.add(gooseDuck)
        
        let flockOfMallards = createMallards(duckFactory)
        flockOfDucks.add(flockOfMallards)
        
        print("\n오리 게임: 전체 오리 무리")
        simulate(flockOfDucks)
        
        print("\n오리 게임: Mallard 오리 무리")
        simulate(flockOfMallards)
        
        print("\n오리가 소리를 낸 횟수: \(QuackCounter.getQuacks()) 회")
    }
    
    func createMallards(_ duckFactory: AbstractDuckFactory) -> Flock {
        let flockOfMallards = Flock()
        
        let mallardOne: Quackable = duckFactory.createMallardDuck()
        let mallardTwo: Quackable = duckFactory.createMallardDuck()
        let mallardThree: Quackable = duckFactory.createMallardDuck()
        let mallardFour: Quackable = duckFactory.createMallardDuck()
        flockOfMallards.add(mallardOne)
        flockOfMallards.add(mallardTwo)
        flockOfMallards.add(mallardThree)
        flockOfMallards.add(mallardFour)
        
        return flockOfMallards
    }
    
    func simulate(_ duck: Quackable) {
        duck.quack()
    }
}
