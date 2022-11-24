//
//  Pizza.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/25/22.
//

import Foundation

class Pizza {
    func prepare() {
        print(#function)
    }
    
    func bake() {
        print(#function)
    }
    
    func cut() {
        print(#function)
    }
    
    func box() {
        print(#function)
    }
    
    func getName() -> String {
        let str = String(describing: self)
        let name = str.split(separator: ".").last ?? ""
        return String(name)
    }
}

class CheesePizza: Pizza {}
class GreekPizza: Pizza {}
class PepperoniPizza: Pizza {}
