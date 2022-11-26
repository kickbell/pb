//
//  ChocolateBoiler.swift
//  SingletonPattern
//
//  Created by jc.kim on 11/26/22.
//

import Foundation

class ChocolateBoiler {
    private var empty: Bool
    private var boiled: Bool
    
    static var shared = ChocolateBoiler()
    
    private init() {
        self.empty = true
        self.boiled = false
    }
    
    //채우기
    //보일러에 우유와 초콜릿을 혼합한 재료를 넣음
    func fill() {
        if isEmpty() {
            empty = false
            boiled = false
        }
    }
    
    //끓이기
    //비어있고, 끓이기전이라면 끓이기
    func boil() {
        if !isEmpty() && !isBoiled() {
            boiled = true
        }
    }
    
    //물빼기
    //끓인 재료의 물을 빼서 다음단계로 넘기기
    func drain() {
        if !isEmpty() && isBoiled() {
            empty = true
        }
    }
    
    func isEmpty() -> Bool {
        return empty
    }
    
    func isBoiled() -> Bool {
        return boiled
    }
}
