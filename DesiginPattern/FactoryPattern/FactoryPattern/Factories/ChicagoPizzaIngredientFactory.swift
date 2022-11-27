//
//  ChicagoPizzaIngredientFactory.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThickCrustDough()
    }
    
    func createSauce() -> Sauce {
        return PlumTomatoSauce()
    }
    
    func createCheese() -> Cheese {
        return MozzarellaCheese()
    }
    
    func createVeggies() -> [Veggie] {
        return [BlackOlives(), Spinach(), EggPlant()]
    }
    
    func createPepperoni() -> Peppernoni {
        return SlicedPeppernoni()
    }
    
    func createClam() -> Clams {
        return FrozenClams()
    }
}
