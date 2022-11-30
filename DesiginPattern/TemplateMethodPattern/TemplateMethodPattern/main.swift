//
//  main.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

//let coffee = Coffee()
//let tea = Tea()
//
//print("--- 커피 ----")
//coffee.prepareRecipe()
/*
 --- 커피 ----
 물 끓이는 중
 커피를 우려내는 중
 컵에 따르는 중
 커피에 우유와 설탕을 넣을까요? (y/n)
 y
 우유와 설탕을 추가하는 중
 
 --- 커피 ----
 물 끓이는 중
 커피를 우려내는 중
 컵에 따르는 중
 커피에 우유와 설탕을 넣을까요? (y/n)
 n
 Program ended with exit code: 0
 */




//print("\n")
//print("--- 홍차 ----")
//tea.prepareRecipe()
/*
 --- 커피 ----
 물 끓이는 중
 필터로 커피를 우려내는 중
 컵에 따르는 중
 설탕과 우유를 추가하는 중


 --- 홍차 ----
 물 끓이는 중
 찻잎을 우려내는 중
 레몬을 추가하는 중
 컵에 따르는 중
 */



var ducks = [
    Duck(name: "A", weight: 8),
    Duck(name: "E", weight: 2),
    Duck(name: "C", weight: 7),
    Duck(name: "D", weight: 5),
    Duck(name: "B", weight: 10)
]

print("\n정렬 전:")
ducks.forEach { print($0.toString()) }

ducks.sort()

print("\n정렬 후:")
ducks.forEach { print($0.toString()) }
