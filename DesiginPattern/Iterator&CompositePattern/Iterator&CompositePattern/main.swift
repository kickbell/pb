//
//  main.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

//let pancakeHouseMenu = PancakeHouseMenu()
//let objectDinerMenu = ObjectDinerMenu()
//let cafeMenu = CafeMenu()
//
//let waitress = Waitress(pancakeHouseMenu, objectDinerMenu, cafeMenu)
//waitress.printMenu()


let pancakeHouseMenu = Menu("팬케이크 하우스 메뉴", "아침 메뉴")
let objectDinerMenu = Menu("객체마을 식당 메뉴", "점심 메뉴")
let cafeMenu = Menu("카페 메뉴", "저녁 메뉴")
let dessertMenu = Menu("디저트 메뉴", "디저트를 즐겨보세요")

let allMenus = Menu("전체 메뉴", "전체 메뉴")

allMenus.add(pancakeHouseMenu)
allMenus.add(objectDinerMenu)
allMenus.add(cafeMenu)

//아침 메뉴
pancakeHouseMenu.add(
    MenuItem("K&B 팬케이크 세트",
             "스크램블 에그와 토스트가 곁들여진 팬케이크",
             true,
             2.99)
)
pancakeHouseMenu.add(
    MenuItem("레귤러 팬케이크 세트",
             "달걀 프라이와 소시지가 곁들여진 팬케이크",
             false,
             2.99)
)
pancakeHouseMenu.add(
    MenuItem("블루베리 팬케이크 세트",
             "신선한 블루베리와 블루베리 시럽으로 만든 팬케이크",
             true,
             3.49)
)
pancakeHouseMenu.add(
    MenuItem("와플",
             "취향에 따라 블루베리나 딸기를 얹을 수 있는 와플",
             true,
             3.59)
)

//점심 메뉴
objectDinerMenu.add(
    MenuItem("채식주의자용 BLT",
             "통밀 위에 콩고기 베이컨, 상추, 토마토를 얹은 메뉴",
             true,
             2.99)
)
objectDinerMenu.add(
    MenuItem("BLT",
             "통밀 위에 베이컨, 상추, 토마토를 얹은 메뉴",
             false,
             2.99)
)
objectDinerMenu.add(
    MenuItem("오늘의 스프",
             "감자 샐러드를 곁들인 오늘의 스프",
             false,
             3.29)
)
objectDinerMenu.add(
    MenuItem("핫도그",
             "샤워크라우트, 갖은 양념, 양파, 치즈가 곁들여진 핫도그",
             false,
             3.05)
)
objectDinerMenu.add(
    MenuItem("찐 채소와 브라운 라이스",
             "찐 채소와 브라운 라이스의 절묘한 조화",
             true,
             3.99)
)
objectDinerMenu.add(
    MenuItem("파스타",
             "마리나라 소스 스파게티, 효모빵도 드립니다.",
             false,
             3.89)
)

//카페 메뉴
cafeMenu.add(
    MenuItem("베지 버거와 에어 프라이",
             "통밀빵, 상추, 토마토, 감자튀김이 들어간 베지 버거",
             true,
             3.99)
)
cafeMenu.add(
    MenuItem("오늘의 스프",
             "샐러드가 곁들여진 오늘의 스프",
             false,
             3.69)
)
cafeMenu.add(
    MenuItem("부리토",
             "통 핀토콩과 살사, 구아카몰이 곁들여진 푸짐한 부리토",
             true,
             4.29)
)

objectDinerMenu.add(dessertMenu)

//디저트 메뉴
dessertMenu.add(
    MenuItem("애플 파이",
             "바삭바삭한 크러스트에 바닐라 아이스크림이 얹혀 있는 애플 파이",
             true,
             1.59)
)
dessertMenu.add(
    MenuItem("치즈 케이크",
             "초콜릿 그레이엄 크러스트 위에 부드러운 뉴욕 치즈케이크",
             true,
             1.99)
)
dessertMenu.add(
    MenuItem("소르베",
             "라스베리와 라임의 절묘한 조화",
             true,
             1.89)
)

let waitress = Waitress(allMenus)
waitress.printMenu()
