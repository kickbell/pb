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
 준비 중: FactoryPattern.NYStyleVeggiePizza
 도우를 돌리는 중...
 소스를 뿌리는 중...
 토핑를 올리는 중...
  소시지
 175도에서 25분 간 굽기
 피자를 사선으로 자르기
 상자에 피자 담기
 에단이 주문한 FactoryPattern.NYStyleVeggiePizza


 ===== Order =====
 준비 중: FactoryPattern.ChicagoStyleCheesePizza
 도우를 돌리는 중...
 소스를 뿌리는 중...
 토핑를 올리는 중...
  모짜렐라 치즈
  감자
  새우
 175도에서 25분 간 굽기
 네모난 모양으로 자르기
 상자에 피자 담기
 조엘이 주문한 FactoryPattern.ChicagoStyleCheesePizza
 Program ended with exit code: 0
 */

