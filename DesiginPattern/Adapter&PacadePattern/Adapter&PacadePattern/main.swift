//
//  main.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/29/22.
//

import Foundation

let duck = MallardDuck()
let turkey = WildTurkey()

let turkeyAdapter: Duck = TurkeyAdapter(turkey)
let duckAdapter: Turkey = DuckAdapter(duck)

print("\n--- 칠면조가 말하길 ---")
turkey.gobble()
turkey.fly()

print("\n--- 오리가 말하길 ---")
duck.quack()
duck.fly()

print("\n--- 칠면조 어댑터가 말하길 ---")
//TurkeyAdapter 클래스지만, Duck 프로토콜을 준수, 다형성
turkeyAdapter.quack()
turkey.fly()

print("\n--- 오리 어댑터가 말하길 ---")
duckAdapter.gobble()
duckAdapter.fly()

/*
 --- 칠면조가 말하길 ---
 골골
 짧은 거리를 날고 있어요!

 --- 오리가 말하길 ---
 꽥
 날고 있어요!

 --- 칠면조 어댑터가 말하길 ---
 골골
 짧은 거리를 날고 있어요!

 --- 오리 어댑터가 말하길 ---
 꽥
 날고 있어요!
 */
