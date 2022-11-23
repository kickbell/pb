//
//  Duck.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation

class Duck {
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior
    
    init(flyBehavior: FlyBehavior,
         quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }
    
    func setFlyBehavior(_ fb: FlyBehavior) {
        self.flyBehavior = fb
    }
    
    func setQuackBehavior(_ qb: QuackBehavior) {
        self.quackBehavior = qb
    }
    
    func performFly() {
        flyBehavior.fly()
    }
    
    func performQuack() {
        quackBehavior.quack()
    }
    
    func swim() {
        print("수영을 합니다.")
    }
    
    func display() {
        print("오리 종류별로 이미지를 표시합니다.")
    }
}
