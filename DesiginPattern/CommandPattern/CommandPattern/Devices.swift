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
    enum Speed: Int {
        case OFF = 0
        case LOW
        case MEDIUM
        case HIGH
    }
    
    var location: String = ""
    var speed = Speed.OFF
    
    func high() {
        speed = Speed.HIGH
        print("거실 선풍기 속도가 \(speed)로 설정되었습니다.")
    }
    
    func medium() {
        speed = Speed.MEDIUM
        print("거실 선풍기 속도가 \(speed)로 설정되었습니다.")
    }
    
    func low() {
        speed = Speed.LOW
        print("거실 선풍기 속도가 \(speed)로 설정되었습니다.")
    }

    func on() {
        speed = Speed.MEDIUM
        print("거실 선풍기 속도가 \(speed)로 설정되었습니다.")
    }
    
    func off() {
        speed = Speed.OFF
        print("거실 선풍기가 꺼졌습니다.")
    }
    
    func getSpeed(_ speed: CeilingFan.Speed) -> CeilingFan.Speed {
        print("거실 선풍기 속도는 \(speed)입니다.")
        return speed
    }
}

class Hottub {
    func on() {
       print("욕조가 켜졌습니다.")
    }
    
    func off() {
       print("욕조가 꺼졌습니다.")
    }
    
    func setTemperature(_ temp: Int) {
        print("욕조 온도를 \(temp)도로 설정합니다.")
    }
}

class TV {
    func on() {
       print("거실 TV가 켜졌습니다.")
    }
    
    func off() {
       print("거실 TV가 꺼졌습니다.")
    }
}
