//
//  main.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation


let pancakeHouseMenu = PancakeHouseMenu()
let objectDinerMenu = ObjectDinerMenu()
let cafeMenu = CafeMenu()

let waitress = Waitress(pancakeHouseMenu, objectDinerMenu, cafeMenu)
waitress.printMenu()
/*
 ------------------------ 메뉴판 ------------------------

 < 아침 메뉴 >
 K&B 팬케이크 세트, 2.99 -- 스크램블 에그와 토스트가 곁들여진 팬케이크
 레귤러 팬케이크 세트, 2.99 -- 달걀 프라이와 소시지가 곁들여진 팬케이크
 블루베리 팬케이크 세트, 3.49 -- 신선한 블루베리와 블루베리 시럽으로 만든 팬케이크
 와플, 3.59 -- 취향에 따라 블루베리나 딸기를 얹을 수 있는 와플

 < 점심 메뉴 >
 채식주의자용 BLT, 2.99 -- 통밀 위에 콩고기 베이컨, 상추, 토마토를 얹은 메뉴
 BLT, 2.99 -- 통밀 위에 베이컨, 상추, 토마토를 얹은 메뉴
 오늘의 스프, 3.29 -- 감자 샐러드를 곁들인 오늘의 스프
 핫도그, 3.05 -- 샤워크라우트, 갖은 양념, 양파, 치즈가 곁들여진 핫도그
 찐 채소와 브라운 라이스, 3.99 -- 찐 채소와 브라운 라이스의 절묘한 조화
 파스타, 3.89 -- 마리나라 소스 스파게티, 효모빵도 드립니다.
 Program ended with exit code: 0
 */
