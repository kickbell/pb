//
//  main.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/24/22.
//

import Foundation

let pizzaStore = PizzaStore(SimplePizzaFactory())
let pizza = pizzaStore.orderPizza("cheese")
print(pizza.getName())


