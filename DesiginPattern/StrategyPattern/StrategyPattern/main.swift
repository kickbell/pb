//
//  main.swift
//  StrategyPattern
//
//  Created by jc.kim on 11/21/22.
//

import Foundation


var mallardDuck = MallardDuck()
mallardDuck.performFly() //저는 날 수 있어요.
mallardDuck.performQuack() //꽥꽥

var modelDuck = ModelDuck()
modelDuck.performFly() //저는 날 수 없어요.
modelDuck.setFlyBehavior(FlyRocketPowered())
modelDuck.performFly() //저는 모형오리라 로켓파워로 날아갑니다.


