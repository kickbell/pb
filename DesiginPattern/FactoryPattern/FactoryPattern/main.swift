//
//  main.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/24/22.
//

import Foundation

//let pizzaStore = PizzaStore(NYPizzaFactory())
//let pizza = pizzaStore.orderPizza("veggie")
//print(pizza.getName())


let nyPizzaStore = NYPizzaStore()
let nyPizza = nyPizzaStore.orderPizza("veggie")
print(nyPizza.getName())

let californiaPizzaStore = CaliforniaPizzaStore()
let californiaPizza = californiaPizzaStore.orderPizza("veggie")
print(californiaPizza.getName())


