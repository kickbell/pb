//
//  Coffee.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

class Coffee {
    func prepareRecipe() {
        boilWater()
        brewCoffeeGrinds()
        pourInCup()
        addSugarAndMilk()
    }
    
    func boilWater() {
        print("물 끓이는 중")
    }
    
    func brewCoffeeGrinds() {
        print("필터로 커피를 우려내는 중")
    }
    
    func pourInCup() {
        print("컵에 따르는 중")
    }
    
    func addSugarAndMilk() {
        print("설탕과 우유를 추가하는 중")
    }
}
