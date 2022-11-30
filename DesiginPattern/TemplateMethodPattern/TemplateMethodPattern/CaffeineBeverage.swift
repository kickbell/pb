//
//  CaffeineBeverage.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

//카페인 음료
protocol CaffeineBeverage {
    //다른 언어 였다면 prepareRecipe 앞에 final 키워드를 넣어서 오버라이드를
    //방지했을 것이나 swift는 사용할 수 없다.
    func prepareRecipe()
    
    func boilWater()
    func pourInCup()
    
    //hook 메소드
    func customerWantsCondiments() -> Bool
    
    //추상메소드
    func brew()
    func addCondiments()
}

extension CaffeineBeverage {
    func prepareRecipe() {
        boilWater()
        brew()
        pourInCup()
        if customerWantsCondiments() {
            addCondiments()
        }
    }
    
    func boilWater() {
        print("물 끓이는 중")
    }
    
    func pourInCup() {
        print("컵에 따르는 중")
    }
    
    func customerWantsCondiments() -> Bool {
        return false
    }
}
