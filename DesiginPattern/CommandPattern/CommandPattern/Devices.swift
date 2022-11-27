//
//  Devices.swift
//  CommandPattern
//
//  Created by jc.kim on 11/28/22.
//

import Foundation

class Light {
    func on() {
        print("조명이 켜졌습니다.")
    }
    
    func off() {
        print("조명이 꺼졌습니다.")
    }
}

class GarageDoor {
    func open() {
        print("차고 문이 열렸습니다.")
    }
    
    func close() {
        print("차고 문이 닫혔습니다.")
    }
}
