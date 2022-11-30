//
//  Tea.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

class Tea {
    func prepareRecipe() {
        boilWater()
        steepTeaBag()
        addLemon()
        pourInCup()
    }
    
    func boilWater() {
        print("물 끓이는 중")
    }
    
    func steepTeaBag() {
        print("찻잎을 우려내는 중")
    }
    
    func addLemon() {
        print("레몬을 추가하는 중")
    }
    
    func pourInCup() {
        print("컵에 따르는 중")
    }
}
