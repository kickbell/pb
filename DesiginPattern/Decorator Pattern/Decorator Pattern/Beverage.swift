//
//  Beverage.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/23/22.
//

import Foundation

class Beverage {
    private var description: String
    private var milk: Bool = false
    private var soy: Bool = false
    private var mocha: Bool = false
    private var whip: Bool = false
    
    init(description: String) {
        self.description = description
    }
    
    func getDescription() -> String {
        self.description
    }
    
    private func hasMilk() -> Bool { self.milk }
    private func hasSoy() -> Bool { self.soy }
    private func hasMocha() -> Bool { self.mocha }
    private func hasWhip() -> Bool { self.whip }
    
    func setMilk(_ b: Bool) { self.milk = b }
    func setSoy(_ b: Bool) { self.soy = b }
    func setMocha(_ b: Bool) { self.mocha = b }
    func setWhip(_ b: Bool) { self.whip = b }
    func cost() -> Double {
        var condimentCost: Double = 0.0 //조미료 비용
        let milkCost: Double = 2.0
        let soyCost: Double = 3.0
        let mochaCost: Double = 2.5
        let whipCost: Double = 1.0
        
        if hasMilk() { condimentCost += milkCost }
        if hasSoy() { condimentCost += soyCost }
        if hasMocha() { condimentCost += mochaCost }
        if hasWhip() { condimentCost += whipCost }
        
        return condimentCost
    }
    
}

class HouseBlend: Beverage {
    override func cost() -> Double {
        return 2.49 + super.cost()
    }
}

class DarkRoast: Beverage {
    override func cost() -> Double {
        return 2.49 + super.cost()
    }
}

class Decaf: Beverage {
    override func cost() -> Double {
        return 2.29 + super.cost()
    }
}

class Espresso: Beverage {
    override func cost() -> Double {
        return 1.99 + super.cost()
    }
}



