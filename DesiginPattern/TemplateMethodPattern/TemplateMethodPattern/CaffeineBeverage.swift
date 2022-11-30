//
//  CaffeineBeverage.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

//카페인 음료
protocol CaffeineBeverage {
    func prepareRecipe()
    func boilWater()
    func pourInCup()
}
