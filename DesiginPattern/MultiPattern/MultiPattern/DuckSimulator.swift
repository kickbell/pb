//
//  DuckSimulator.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class DuckSimulator {
    func simulate() {
        let mallardDuck: Quackable = MallardDuck()
        let redheadDuck: Quackable = RedheadDuck()
        let duckCall: Quackable = DuckCall()
        let rubberDuck: Quackable = RubberDuck()
        let gooseDuck: Quackable = GooseAdapter(Goose())
        
        print("오리 시뮬레이션 게임")
        
        simulate(mallardDuck)
        simulate(redheadDuck)
        simulate(duckCall)
        simulate(rubberDuck)
        simulate(gooseDuck)
    }
    
    func simulate(_ duck: Quackable) {
        duck.quack()
    }
}
