//
//  ChicagoPizzaStore.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class ChicagoPizzaStore: PizzaStore {
    func createPizza(_ type: String) -> Pizza {
        if type == "cheese"{ //치즈
            return ChicagoStyleCheesePizza()
        } else if type == "pepperoni"{ //페퍼로니
            return ChicagoStylePepperoniPizza()
        } else if type == "clam" { //조개
            return ChicagoStyleClamPizza()
        } else if type == "veggie" { //야채
            return ChicagoStyleVeggiePizza()
        } else {
            return EmptyPizza()
        }
    }
}
