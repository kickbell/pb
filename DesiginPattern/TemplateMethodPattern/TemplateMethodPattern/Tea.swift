//
//  Tea.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

class Tea: CaffeineBeverage {
    func brew() {
        print("찻잎을 우려내는 중")
    }
    
    func addCondiments() {
        print("레몬을 추가하는 중")
    }
}
