//
//  main.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

let coffee = Coffee()
let tea = Tea()

print("--- 커피 ----")
coffee.prepareRecipe()
print("\n")
print("--- 홍차 ----")
tea.prepareRecipe()
