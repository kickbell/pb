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


let nyStore = NYPizzaStore()
let chicagoStore = ChicagoPizzaStore()


var pizza = nyStore.orderPizza("veggie")
print("에단이 주문한 \(pizza.getName())")


pizza = chicagoStore.orderPizza("veggie")
print("조엘이 주문한 \(pizza.getName())")


