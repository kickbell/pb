//
//  main.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

let duckSimulator = DuckSimulator()
let duckFactory = CountingDuckFactory()
duckSimulator.simulate(duckFactory)

/*
 오리 시뮬레이션 게임

 오리 게임: 전체 오리 무리
 꽥꽥
 꽥꽥학자: MultiPattern.RedheadDuck가 방금 소리냈다.
 꽉꽉
 꽥꽥학자: MultiPattern.DuckCall가 방금 소리냈다.
 삑삑
 꽥꽥학자: MultiPattern.RubberDuck가 방금 소리냈다.
 끽끽
 꽥꽥학자: MultiPattern.GooseAdapter가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.

 오리 게임: Mallard 오리 무리
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.
 꽥꽥
 꽥꽥학자: MultiPattern.MallardDuck가 방금 소리냈다.

 오리가 소리를 낸 횟수: 11 회
 */




