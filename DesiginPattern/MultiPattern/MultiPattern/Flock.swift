//
//  Flock.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

//무리, 짐승의 떼
class Flock: Quackable {
    func registerObserver(ob: QuackObserver) {
        quackers.forEach {
            $0.registerObserver(ob: ob)
        }
    }

    func notifyObservers() {}
    
    var quackers: [Quackable] = []
    
    func add(_ quacker: Quackable) {
        self.quackers.append(quacker)
    }
    
    func quack() {
        quackers.forEach {
            $0.quack()
        }
    }
}
