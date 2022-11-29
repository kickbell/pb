//
//  Turkey.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

//칠면조
protocol Turkey {
    func gobble() //꽥이 아니라 골골골~
    func fly() //칠면조는 날긴 날지만, 오리처럼은 잘 못납니다.
}

class WildTurkey: Turkey {
    func gobble() {
        print("골골")
    }
    
    func fly() {
        print("짧은 거리를 날고 있어요!")
    }
}
