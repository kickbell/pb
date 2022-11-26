//
//  main.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/24/22.
//

import Foundation

let pizzaStore = PizzaStore(NYPizzaFactory())
let pizza = pizzaStore.orderPizza("veggie")
print(pizza.getName())


