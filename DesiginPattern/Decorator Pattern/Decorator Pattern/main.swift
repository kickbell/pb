//
//  main.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/23/22.
//

import Foundation

let cafelatte = Espresso(description: "카페라떼")
cafelatte.setMilk(true)

//에스프레소 1.99 + 우유 2.0
print(cafelatte.getDescription(), cafelatte.cost())

let cafeMocha = Espresso(description: "카페모카")
cafeMocha.setMocha(true)
cafeMocha.setWhip(true)

//에스프레소 1.99 + 모카 2.5 + whip 1.0
print(cafeMocha.getDescription(), cafeMocha.cost())


