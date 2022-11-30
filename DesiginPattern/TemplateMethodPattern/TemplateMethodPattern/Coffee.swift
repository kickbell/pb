//
//  Coffee.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

class Coffee: CaffeineBeverage {
    func brew() {
        print("커피를 우려내는 중")
    }
    
    func addCondiments() {
        print("우유와 설탕을 추가하는 중")
    }
    
    func customerWantsCondiments() -> Bool {
        let result = getUserInput()
        if result == "y" {
            return true
        }
        return false
    }
    
    func getUserInput() -> String {
        print("커피에 우유와 설탕을 넣을까요? (y/n)")
        return readLine() ?? ""
    }
}
