//
//  main.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/23/22.
//

import Foundation

/*
 <메뉴판>
 
 [메인메뉴]
 2.49 하우스블렌드
 2.49 다크로스트
 2.29 디카페인
 1.99 에스프레소
 
 [첨가물]
 2.0 우유
 3.0 두유
 2.5 모카
 1.0 휘핑크림
 
 */

var beverage: Beverage = Espresso()
print("\(beverage.getDescription()) $\(beverage.cost())")
//에스프레소 $1.99

var beverage2: Beverage = DarkRoast()
beverage2 = Mocha(beverage: beverage2)
beverage2 = Mocha(beverage: beverage2)
beverage2 = Whip(beverage: beverage2)
print("\(beverage2.getDescription()) $\(beverage2.cost())")
//다크 로스트 원두, 모카, 모카, 휘핑크림 $8.49

var beverage3: Beverage = HouseBlend()
beverage3 = Soy(beverage: beverage3)
beverage3 = Mocha(beverage: beverage3)
beverage3 = Whip(beverage: beverage3)
print("\(beverage3.getDescription()) $\(beverage3.cost())")
//하우스 블렌드 원두, 두유, 모카, 휘핑크림 $8.99

var darkroast: Beverage = DarkRoast()
darkroast = Mocha(beverage: darkroast)
darkroast = Whip(beverage: darkroast)
print("\(darkroast.getDescription()) $\(darkroast.cost())")
//다크 로스트 원두, 모카, 휘핑크림 $5.99

var ventiDarkroast: Beverage = DarkRoast()
ventiDarkroast.setSize(.VENTI)
ventiDarkroast = Mocha(beverage: ventiDarkroast)
ventiDarkroast = Whip(beverage: ventiDarkroast)
print("\(ventiDarkroast.getDescription()) $\(ventiDarkroast.cost())")
//다크 로스트 원두, 모카, 휘핑크림 $6.99
