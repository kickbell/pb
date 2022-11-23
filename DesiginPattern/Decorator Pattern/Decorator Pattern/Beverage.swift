//
//  Beverage.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/23/22.
//

import Foundation

//음료
protocol Beverage {
    var description: String { get }
    
    func getDescription() -> String
    func cost()
}

class HouseBlend: Beverage {
    var description: String = "하우스 블렌드 원두"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() {
        
    }
}

class DarkRoast: Beverage {
    var description: String = "다크 로스트 원두"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() {
        
    }
}

class Decaf: Beverage {
    var description: String = "디카페인"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() {
        
    }
}

class Espresso: Beverage {
    var description: String = "에스프레소"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() {
        
    }
}




