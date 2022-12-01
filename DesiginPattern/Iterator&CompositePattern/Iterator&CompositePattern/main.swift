//
//  main.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

//let pancakeHouseMenu = PancakeHouseMenu()
//let breakfastItems = pancakeHouseMenu.getMenuItems()
//
//let objectDinerMenu = ObjectDinerMenu()
//let lunchItems = objectDinerMenu.getMenuItems()


/*
 컬렉션 타입이 Array/ArrayList 로 다르므로, 책에서는
 각 컬렉션 타입마다 제공하는 메소드가 다름을 강조했다. 아래와 같은 식이다.
 그래서 이렇게 컬렉션에 의존된 코드가 엄청나게 많을 때의 해결방법을 이야기한다.
 
 breakfastItems.size()
 breakfastItems.get(i)
 
 lunchItems.length
 lunchItems[i]
 */
//for i in 0..<breakfastItems.count {
//    let menuItem = breakfastItems[i]
//    print(menuItem.getName())
//    print(menuItem.getPrice())
//    print(menuItem.getDescription())
//}
//
//for i in 0..<lunchItems.count {
//    let menuItem = lunchItems[i]
//    print(menuItem.getName())
//    print(menuItem.getPrice())
//    print(menuItem.getDescription())
//}

/*
 K&B 팬케이크 세트
 2.99
 스크램블 에그와 토스트가 곁들여진 팬케이크
 레귤러 팬케이크 세트
 2.99
 달걀 프라이와 소시지가 곁들여진 팬케이크
 블루베리 팬케이크 세트
 3.49
 신선한 블루베리와 블루베리 시럽으로 만든 팬케이크
 와플
 3.59
 취향에 따라 블루베리나 딸기를 얹을 수 있는 와플
 채식주의자용 BLT
 2.99
 통밀 위에 콩고기 베이컨, 상추, 토마토를 얹은 메뉴
 BLT
 2.99
 통밀 위에 베이컨, 상추, 토마토를 얹은 메뉴
 오늘의 스프
 3.29
 감자 샐러드를 곁들인 오늘의 스프
 핫도그
 3.05
 샤워크라우트, 갖은 양념, 양파, 치즈가 곁들여진 핫도그
 */


let pancakeHouseMenu = PancakeHouseMenu()
let objectDinerMenu = ObjectDinerMenu()

let waitress = Waitress(pancakeHouseMenu, objectDinerMenu)
waitress.printMenu()
