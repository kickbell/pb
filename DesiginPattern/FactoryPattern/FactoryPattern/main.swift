//
//  main.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/24/22.
//

import Foundation

let nyStore = NYPizzaStore()
let chicagoStore = ChicagoPizzaStore()

var pizza = nyStore.orderPizza("veggie")
print("< 에단이 주문한 \(pizza.getName()) >")
print("dough:", pizza.dough)
print("sauce:", pizza.sauce)
print("cheese:", pizza.cheese)
print("veggies:", pizza.veggies)
print("pepperoni:", pizza.pepperoni)
print("clam:", pizza.clam)

pizza = chicagoStore.orderPizza("cheese")
print("< 조엘이 주문한 \(pizza.getName()) >")
print("dough:", pizza.dough)
print("sauce:", pizza.sauce)
print("cheese:", pizza.cheese)
print("veggies:", pizza.veggies)
print("pepperoni:", pizza.pepperoni)
print("clam:", pizza.clam)
/*
 ===== Order =====
 준비 중: 뉴욕 스타일 야채 피자
 175도에서 25분 간 굽기
 피자를 사선으로 자르기
 상자에 피자 담기
 < 에단이 주문한 뉴욕 스타일 야채 피자 >
 dough: FactoryPattern.ThinCrustDough
 sauce: FactoryPattern.MarinaraSauce
 cheese: FactoryPattern.ReggianoCheese
 veggies: [FactoryPattern.Garlic, FactoryPattern.Onion, FactoryPattern.Mushroom, FactoryPattern.RedPepper]
 pepperoni: FactoryPattern.BasicPeppernoni
 clam: FactoryPattern.BasicClams


 ===== Order =====
 준비 중: 시카고 스타일 치즈 피자
 175도에서 25분 간 굽기
 피자를 사선으로 자르기
 상자에 피자 담기
 < 조엘이 주문한 시카고 스타일 치즈 피자 >
 dough: FactoryPattern.ThinCrustDough
 sauce: FactoryPattern.MarinaraSauce
 cheese: FactoryPattern.ReggianoCheese
 veggies: []
 pepperoni: FactoryPattern.BasicPeppernoni
 clam: FactoryPattern.BasicClams
 Program ended with exit code: 0
 */

