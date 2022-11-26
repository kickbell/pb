//
//  Pizza.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/25/22.
//

import Foundation

protocol Pizza {
    var name: String { get }
    var dough: String { get }
    var sauce: String { get }
    var toppings: [String] { get }
    
    func prepare()
    func bake()
    func cut()
    func box()
    func getName() -> String
}

extension Pizza {
    func prepare() {
        print("준비 중: \(name)")
        print("도우를 돌리는 중...")
        print("소스를 뿌리는 중...")
        print("토핑를 올리는 중...")
        toppings.forEach { topping in
            print(" \(topping)")
        }
    }
    
    func bake() {
        print("175도에서 25분 간 굽기")
    }
    
    func cut() {
        print("피자를 사선으로 자르기")
    }
    
    func box() {
        print("상자에 피자 담기")
    }
    
    func getName() -> String {
        return name
    }
}


class EmptyPizza: Pizza {}
class CheesePizza: Pizza {}
class GreekPizza: Pizza {}
class PepperoniPizza: Pizza {}
class ClamPizza: Pizza {}
class VeggiePizza: Pizza {}

class NYStyleCheesePizza: Pizza {}
class NYStyleGreekPizza: Pizza {}
class NYStylePepperoniPizza: Pizza {}
class NYStyleClamPizza: Pizza {}
class NYStyleVeggiePizza: Pizza {}

class ChicagoStyleCheesePizza: Pizza {}
class ChicagoStyleGreekPizza: Pizza {}
class ChicagoStylePepperoniPizza: Pizza {}
class ChicagoStyleClamPizza: Pizza {}
class ChicagoStyleVeggiePizza: Pizza {}

class CaliforniaStyleCheesePizza: Pizza {}
class CaliforniaGreekPizza: Pizza {}
class CaliforniaPepperoniPizza: Pizza {}
class CaliforniaClamPizza: Pizza {}
class CaliforniaVeggiePizza: Pizza {}
