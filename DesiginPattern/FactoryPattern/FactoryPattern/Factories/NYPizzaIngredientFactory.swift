//
//  NYPizzaIngredientFactory.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    func createSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    func createCheese() -> Cheese {
        return ReggianoCheese()
    }
    
    //야채도 종류별로 더 어렵게 만들 수 있지만 너무 복잡해져서 일단 그냥 이렇게 사용.
    func createVeggies() -> [Veggie] {
        return [Garlic(), Onion(), Mushroom(), RedPepper()]
    }
    
    func createPepperoni() -> Peppernoni {
        return SlicedPeppernoni()
    }
    
    //뉴욕은 바닷가라 신선한 조개를 쓰지만, 시카고는 내륙이라 냉동 조개를 써야함.
    func createClam() -> Clams {
        FreshClams()
    }
}
