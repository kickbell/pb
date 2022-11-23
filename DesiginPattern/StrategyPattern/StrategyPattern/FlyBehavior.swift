//
//  FlyBehavior.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation


protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("저는 날 수 있어요.")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("저는 날 수 없어요.")
    }
}

class FlyRocketPowered: FlyBehavior {
    func fly() {
        print("저는 모형오리라 로켓파워로 날아갑니다.")
    }
}
