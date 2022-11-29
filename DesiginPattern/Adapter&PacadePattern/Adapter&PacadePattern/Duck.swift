//
//  Duck.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

protocol Duck {
    func quack()
    func fly()
}

class MallardDuck: Duck {
    func quack() {
        print("꽥")
    }
    
    func fly() {
        print("날고 있어요!")
    }
}
