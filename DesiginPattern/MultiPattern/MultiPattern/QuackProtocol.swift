//
//  QuackObservable.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

protocol QuackProtocol {
    func registerObserver(ob: QuackObserver)
    func notifyObservers()
}

protocol QuackObserver {
    func update(_ duck: QuackProtocol)
}

class QuackObservable: QuackProtocol {
    var observers: [QuackObserver] = []
    let duck: QuackProtocol
    
    init(_ duck: QuackProtocol) {
        self.duck = duck
    }
    
    func registerObserver(ob: QuackObserver) {
        observers.append(ob)
    }
    
    func notifyObservers() {
        observers.forEach {
            $0.update(duck)
        }
    }
}

class Quacklogist: QuackObserver {
    func update(_ duck: QuackProtocol) {
        print("꽥꽥학자: \(duck)가 방금 소리냈다.")
    }
}

