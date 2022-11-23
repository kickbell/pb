//
//  MallardDuck.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation

//청둥오리 또는 물오리
class MallardDuck: Duck {
    
    init() {
        super.init(
            flyBehavior: FlyWithWings(),
            quackBehavior: Quack()
        )
    }
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }

}
