//
//  PizzaStore.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/25/22.
//

import Foundation

//protocol PizzaStore {
//    func orderPizza(_ type: String) -> Pizza
//    func createPizza(_ type: String) -> Pizza
//}
//
//extension PizzaStore {
//    func orderPizza(_ type: String) -> Pizza {
//        var pizza: Pizza
//
//        pizza = createPizza(type)
//
//        /*
//         변하지 않는 부분
//         피자 공통
//         */
//        pizza.prepare()
//        pizza.bake()
//        pizza.cut()
//        pizza.box()
//        return pizza
//    }
//}

class PizzaStore {
    var factory: Factory

    init(_ factory: Factory) {
        self.factory = factory
    }

    func orderPizza(_ type: String) -> Pizza {
        var pizza: Pizza

        pizza = factory.createPizza(type)

        /*
         변하지 않는 부분
         피자 공통
         */
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
