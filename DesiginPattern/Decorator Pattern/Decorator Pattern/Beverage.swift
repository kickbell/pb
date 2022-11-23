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
    func cost() -> Double
}

class HouseBlend: Beverage {
    let description: String = "하우스 블렌드 원두"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() -> Double {
        return 2.49
    }
}

class DarkRoast: Beverage {
    let description: String = "다크 로스트 원두"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() -> Double {
        return 2.49
    }
}

class Decaf: Beverage {
    let description: String = "디카페인"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() -> Double {
        return 2.29
    }
}

class Espresso: Beverage {
    let description: String = "에스프레소"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() -> Double {
        return 1.99
    }
}

/*
 milk 우유
 steamed milk 데운 우유
 soy milk 두유
 whip 휘핑크림
 mocha 모카
 ...
 */
class HouseBlendWithMilk: Beverage { ... }
class HouseBlendWithSteamedMilk: Beverage { ... }
class HouseBlendWithSoy: Beverage { ... }
class HouseBlendWithMocha: Beverage { ... }
class HouseBlendWithWhip: Beverage { ... }
class HouseBlendWithMilkandSoy: Beverage { ... }
class HouseBlendWithSteamedMilkandWhip: Beverage { ... }
class HouseBlendWithSoyandWhip: Beverage { ... }
class HouseBlendWithMochaandWhip: Beverage { ... }
class HouseBlendWithWhipandMilkandSoy: Beverage { ... }

class DarkRoastWithMilk: Beverage { ... }
class DarkRoastWithSteamedMilk: Beverage { ... }
class DarkRoastWithSoy: Beverage { ... }
class DarkRoastWithMocha: Beverage { ... }
class DarkRoastWithWhip: Beverage { ... }
class DarkRoastWithMilkandSoy: Beverage { ... }
class DarkRoastWithSteamedMilkandWhip: Beverage { ... }
class DarkRoastWithSoyandWhip: Beverage { ... }
class DarkRoastWithMochaandWhip: Beverage { ... }
class DarkRoastWithWhipandMilkandSoy: Beverage { ... }

class EspressoWithMilk: Beverage { ... }
class EspressoWithSteamedMilk: Beverage { ... }
class EspressoWithSoy: Beverage { ... }
class EspressoWithMocha: Beverage { ... }
class EspressoWithWhip: Beverage { ... }
class EspressoWithMilkandSoy: Beverage { ... }
class EspressoWithSteamedMilkandWhip: Beverage { ... }
class EspressoWithSoyandWhip: Beverage { ... }
class EspressoWithMochaandWhip: Beverage { ... }
class EspressoWithWhipandMilkandSoy: Beverage { ... }

class DecafWithMilk: Beverage { ... }
class DecafWithSteamedMilk: Beverage { ... }
class DecafWithSoy: Beverage { ... }
class DecafWithMocha: Beverage { ... }
class DecafWithWhip: Beverage { ... }
class DecafWithMilkandSoy: Beverage { ... }
class DecafWithSteamedMilkandWhip: Beverage { ... }
class DecafWithSoyandWhip: Beverage { ... }
class DecafWithMochaandWhip: Beverage { ... }
class DecafWithWhipandMilkandSoy: Beverage { ... }



