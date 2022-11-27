//
//  NYPizzaStore.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class NYPizzaStore: PizzaStore {
    func createPizza(_ type: String) -> Pizza {
        if type == "cheese"{ //치즈
            return NYStyleCheesePizza()
        } else if type == "pepperoni"{ //페퍼로니
            return NYStylePepperoniPizza()
        } else if type == "clam" { //조개
            return NYStyleClamPizza()
        } else if type == "veggie" { //야채
            return NYStyleVeggiePizza()
        } else {
            return EmptyPizza()
        }
    }
}
