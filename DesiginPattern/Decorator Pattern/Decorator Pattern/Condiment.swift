//
//  Condiment.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/24/22.
//

import Foundation

class Mocha: CondimentDecorator {
    init(beverage: Beverage) {
        super.init()
        self.beverage = beverage
    }
    
    override func getDescription() -> String {
        return beverage.getDescription() + ", 모카"
    }
    
    override func cost() -> Double {
        return beverage.cost() + 2.5
    }
}

class Soy: CondimentDecorator {
    init(beverage: Beverage) {
        super.init()
        self.beverage = beverage
    }
    
    override func getDescription() -> String {
        return beverage.getDescription() + ", 두유"
    }
    
    override func cost() -> Double {
        return beverage.cost() + 3.0
    }
}

class Milk: CondimentDecorator {
    init(beverage: Beverage) {
        super.init()
        self.beverage = beverage
    }
    
    override func getDescription() -> String {
        return beverage.getDescription() + ", 우유"
    }
    
    override func cost() -> Double {
        return beverage.cost() + 2.0
    }
}

class Whip: CondimentDecorator {
    init(beverage: Beverage) {
        super.init()
        self.beverage = beverage
    }
    
    override func getDescription() -> String {
        return beverage.getDescription() + ", 휘핑크림"
    }
    
    override func cost() -> Double {
        var cost = beverage.cost()
        switch beverage.getSize() {
        case .TALL: cost += 1.0
        case .GRANDE: cost += 1.5
        case .VENTI: cost += 2.0
        }
        return cost
    }
}
