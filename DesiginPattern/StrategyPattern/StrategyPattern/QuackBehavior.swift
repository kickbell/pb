//
//  QuackBehavior.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation


protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("꽥꽥")
    }
}

//고무오리 우는소리
class Squack: QuackBehavior {
    func quack() {
        print("삑삑")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("저는 소리를 낼 수 없어요.")
    }
}
