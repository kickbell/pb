//
//  AbstractDuckFactory.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

protocol AbstractDuckFactory {
    func createMallardDuck() -> Quackable
    func createRedheadDuck() -> Quackable
    func createDuckCall() -> Quackable
    func createRubberDuck() -> Quackable
}

//class DuckFactory: AbstractDuckFactory {
//    func createMallardDuck() -> Quackable {
//        return MallardDuck()
//    }
//
//    func createRedheadDuck() -> Quackable {
//        return RedheadDuck()
//    }
//
//    func createDuckCall() -> Quackable {
//        return DuckCall()
//    }
//
//    func createRubberDuck() -> Quackable {
//        return RubberDuck()
//    }
//}

class CountingDuckFactory: AbstractDuckFactory {
    func createMallardDuck() -> Quackable {
        return QuackCounter(MallardDuck())
    }
    
    func createRedheadDuck() -> Quackable {
        return QuackCounter(RedheadDuck())
    }
    
    func createDuckCall() -> Quackable {
        return QuackCounter(DuckCall())
    }
    
    func createRubberDuck() -> Quackable {
        return QuackCounter(RubberDuck())
    }
}
