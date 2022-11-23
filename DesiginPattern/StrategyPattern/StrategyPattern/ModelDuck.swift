//
//  ModelDuck.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation

class ModelDuck: Duck {
    
    init() {
        super.init(
            flyBehavior: FlyNoWay(),
            quackBehavior: Quack()
        )
    }
    
    override func display() {
        print("저는 모형오리 입니다.")
    }
    
}
