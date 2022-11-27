//
//  ChicagoPizzaStore.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class ChicagoPizzaStore: PizzaStore {
    func createPizza(_ type: String) -> Pizza {
        var pizza: Pizza = BasicPizza()
        let ingredientFactory = NYPizzaIngredientFactory()
        if type == "cheese"{ //치즈
            pizza = CheesePizza(ingredienFactory: ingredientFactory)
            pizza.name = "시카고 스타일 치즈 피자"
        } else if type == "pepperoni"{ //페퍼로니
            pizza = PepperoniPizza(ingredienFactory: ingredientFactory)
            pizza.name = "시카고 스타일 페퍼로니 피자"
        } else if type == "clam" { //조개
            pizza = ClamPizza(ingredienFactory: ingredientFactory)
            pizza.name = "시카고 스타일 조개 피자"
        } else if type == "veggie" { //야채
            pizza = VeggiePizza(ingredienFactory: ingredientFactory)
            pizza.name = "시카고 스타일 야채 피자"
        }
        return pizza
    }
}

