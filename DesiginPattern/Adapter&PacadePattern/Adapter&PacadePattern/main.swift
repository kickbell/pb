//
//  main.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/29/22.
//

import Foundation

//let duck = MallardDuck()
//let turkey = WildTurkey()
//
//let turkeyAdapter: Duck = TurkeyAdapter(turkey)
//let duckAdapter: Turkey = DuckAdapter(duck)
//
//print("\n--- 칠면조가 말하길 ---")
//turkey.gobble()
//turkey.fly()
//
//print("\n--- 오리가 말하길 ---")
//duck.quack()
//duck.fly()
//
//print("\n--- 칠면조 어댑터가 말하길 ---")
////TurkeyAdapter 클래스지만, Duck 프로토콜을 준수, 다형성
//turkeyAdapter.quack()
//turkey.fly()
//
//print("\n--- 오리 어댑터가 말하길 ---")
//duckAdapter.gobble()
//duckAdapter.fly()
//
///*
// --- 칠면조가 말하길 ---
// 골골
// 짧은 거리를 날고 있어요!
//
// --- 오리가 말하길 ---
// 꽥
// 날고 있어요!
//
// --- 칠면조 어댑터가 말하길 ---
// 골골
// 짧은 거리를 날고 있어요!
//
// --- 오리 어댑터가 말하길 ---
// 꽥
// 날고 있어요!
// */


let popper = Popper()
let lights = Light()
let screen = Screen()
let projector = Projector()
let amp = Amp()
let player = Player()
//
//print("\n--- 영화 볼 준비 중 ---")
//popper.on()
//popper.pop()
//lights.dim(10)
//screen.down()
//projector.on()
//projector.wideScreenMode()
//amp.on()
//amp.setSurroundSound()
//amp.setVolume(5)
//player.on()
//player.play("탑 건: 매버릭")
//
//print("\n--- 홈시어터를 끄는 중 ---")
//popper.off()
//lights.on()
//screen.up()
//projector.off()
//amp.off()
//player.stop("탑 건: 매버릭")
//player.off()


let homeTheater = HomeTheaterFacade(popper, lights, screen, projector, amp, player)
homeTheater.watchMovie("탑 건: 매버릭")
homeTheater.endMovie("탑 건: 매버릭")

/*
 --- 영화 볼 준비 중 ---
 팝콘 기계가 켜졌습니다.
 팝콘 기계에서 팝콘을 튀기고 있습니다.
 조명 밝기를 10%로 설정합니다.
 스크린이 내려옵니다.
 프로젝터가 켜졌습니다.
 프로젝터 화면 비율을 와이드 모드로 설정합니다.
 앰프가 켜졌습니다.
 앰프를 서라운드 모드로 설정합니다(5.1채널).
 앰프 볼륨을 5으로 설정합니다.
 스트리밍 플레이어가 켜졌습니다.
 스트리밍 플레이어에서 탑 건: 매버릭를 재생합니다.

 --- 홈시어터를 끄는 중 ---
 팝콘 기계가 꺼졌습니다.
 조명이 켜졌습니다.
 스크린이 올라갑니다.
 프로젝터가 꺼졌습니다.
 앰프가 꺼졌습니다.
 스트리밍 플레이어에서 탑 건: 매버릭를 종료합니다.
 스트리밍 플레이어가 꺼졌습니다.
 */
