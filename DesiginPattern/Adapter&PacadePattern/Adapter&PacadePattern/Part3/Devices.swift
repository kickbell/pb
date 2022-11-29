//
//  Devices.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

class Popper {
    func on() {
        print("팝콘 기계가 켜졌습니다.")
    }
    
    func off() {
        print("팝콘 기계가 꺼졌습니다.")
    }
    
    func pop() {
        print("팝콘 기계에서 팝콘을 튀기고 있습니다.")
    }
}

class Light {
    func dim(_ num: Int) {
        print("조명 밝기를 \(num)%로 설정합니다.")
    }
    
    func on() {
        print("조명이 켜졌습니다.")
    }
}

class Screen {
    func down() {
        print("스크린이 내려옵니다.")
    }
    
    func up() {
        print("스크린이 올라갑니다.")
    }
}

class Projector {
    func on() {
        print("프로젝터가 켜졌습니다.")
    }
    
    func off() {
        print("프로젝터가 꺼졌습니다.")
    }
    
    func wideScreenMode() {
        print("프로젝터 화면 비율을 와이드 모드로 설정합니다.")
    }
}

class Amp {
    func on() {
        print("앰프가 켜졌습니다.")
    }
    
    func off() {
        print("앰프가 꺼졌습니다.")
    }
    
    func setStreamingPlayer(_ player: String) {
        print("앰프를 스트리밍 플레이어와 연결합니다.")
    }
    
    func setSurroundSound() {
        print("앰프를 서라운드 모드로 설정합니다(5.1채널).")
    }
    
    func setVolume(_ volume: Int) {
        print("앰프 볼륨을 \(volume)으로 설정합니다.")
    }
}

class Player {
    func on() {
        print("스트리밍 플레이어가 켜졌습니다.")
    }
    
    func off() {
        print("스트리밍 플레이어가 꺼졌습니다.")
    }
    
    func stop(_ movieName: String) {
        print("스트리밍 플레이어에서 \(movieName)를 종료합니다.")
    }
    
    func play(_ movieName: String) {
        print("스트리밍 플레이어에서 \(movieName)를 재생합니다.")
    }
}
