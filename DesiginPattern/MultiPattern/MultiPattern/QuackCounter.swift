//
//  QuackCounter.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class QuackCounter: Quackable {
    
    static var numberOfQuacks: Int = 0
    let duck: Quackable
    
    init(_ duck: Quackable) {
        self.duck = duck
    }
    
    func quack() {
        duck.quack()
        Self.numberOfQuacks += 1
    }
    
    static func getQuacks() -> Int {
        return Self.numberOfQuacks
    }
    
}
