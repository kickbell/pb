//
//  PizzaIngredientFactory.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/27/22.
//

import Foundation

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Veggie]
    func createPepperoni() -> Peppernoni
    func createClam() -> Clams
}

protocol Dough {} //도우
protocol Sauce {} //소스
protocol Cheese {} //치즈
protocol Veggie {} //야채
protocol Peppernoni {} //페퍼로니
protocol Clams {} //조개

class ThinCrustDough: Dough { }
class ThickCrustDough: Dough { }

class MarinaraSauce: Sauce { }
class PlumTomatoSauce: Sauce { }

class ReggianoCheese: Cheese { }
class MozzarellaCheese: Cheese { }

class Garlic: Veggie { }
class Onion: Veggie { }
class Mushroom: Veggie { }
class RedPepper: Veggie { } //고추
class BlackOlives: Veggie { } //블랙올리브
class Spinach: Veggie { } //시금치
class EggPlant: Veggie { } //가지

class SlicedPeppernoni: Peppernoni { }

class FreshClams: Clams { }
class FrozenClams: Clams { }

