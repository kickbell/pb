//
//  GooseAdapter.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class Goose {
    func honk() {
        print("끽끽")
    }
}

class GooseAdapter: Quackable {
    lazy var observable: QuackProtocol = QuackObservable(self)

    let goose: Goose
    
    init(_ goose: Goose) {
        self.goose = goose
    }
    
    func quack() {
        goose.honk()
        notifyObservers()
    }
    
    func registerObserver(ob: QuackObserver) {
        observable.registerObserver(ob: ob)
    }
    
    func notifyObservers() {
        observable.notifyObservers()
    }
}
