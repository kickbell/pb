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

class Stereo {
    func on() {
       print("거실 오디오가 켜졌습니다.")
    }
    
    func off() {
       print("거실 오디오가 꺼졌습니다.")
    }
    
    func setCD() {
        print("거실 오디오에서 CD가 재생됩니다.")
    }
    
    func setDvd() {
        print("거실 오디오에서 DVD가 재생됩니다.")
    }
    
    func setRadio() {
        print("거실 오디오에서 Radio가 재생됩니다.")
    }
    
    func setVolume(_ num: Int){
        print("거실 오디오의 볼륨이 \(num)으로 설정되었습니다.")
    }
}

class CeilingFan {
    func high() {
        print("거실 선풍기 속도가 HIGH로 설정되었습니다.")
    }
    
    func medium() {
        print("거실 선풍기 속도가 MEDIUM으로 설정되었습니다.")
    }
    
    func low() {
        print("거실 선풍기 속도가 LOW로 설정되었습니다.")
    }

    func on() {
        print("거실 선풍기가 켜졌습니다.")
    }
    
    func off() {
        print("거실 선풍기가 꺼졌습니다.")
    }
    
    func getSpeed(_ speed: String) {
        print("거실 선풍기 속도는 \(speed)입니다.")
    }
}
