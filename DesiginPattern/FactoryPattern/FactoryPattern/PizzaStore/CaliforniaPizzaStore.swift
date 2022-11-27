//
//  CaliforniaPizzaStore.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class CaliforniaPizzaStore: PizzaStore {
    func createPizza(_ type: String) -> Pizza {
        if type == "cheese"{ //치즈
            return CaliforniaStyleCheesePizza()
        } else if type == "pepperoni"{ //페퍼로니
            return CaliforniaPepperoniPizza()
        } else if type == "clam" { //조개
            return CaliforniaClamPizza()
        } else if type == "veggie" { //야채
            return CaliforniaVeggiePizza()
        } else {
            return EmptyPizza()
        }
    }
}
