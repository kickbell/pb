//
//  DinerMenu.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation


class DinerMenu {
    static let MAXITEMS = 6
    
    var numberOfItems = 0
    var menuItems: [MenuItem]
    
    init() {
        menuItems = Array(
            repeating: MenuItem("", "", false, 0.0),
            count: DinerMenu.MAXITEMS
        )
        
        addItem("채식주의자용 BLT",
                "통밀 위에 콩고기 베이컨, 상추, 토마토를 얹은 메뉴",
                true,
                2.99)
        
        addItem("BLT",
                "통밀 위에 베이컨, 상추, 토마토를 얹은 메뉴",
                false,
                2.99)
        
        addItem("오늘의 스프",
                "감자 샐러드를 곁들인 오늘의 스프",
                false,
                3.29)
        
        addItem("핫도그",
                "샤워크라우트, 갖은 양념, 양파, 치즈가 곁들여진 핫도그",
                false,
                3.05)
    }
    
    func addItem(_ name: String,
                 _ description: String,
                 _ vegetarian: Bool,
                 _ price: Double) {
        let menuItem = MenuItem(name, description, vegetarian, price)
        
        if numberOfItems >= Self.MAXITEMS {
            print("죄송합니다. 메뉴가 꽉 찼습니다. 더 이상 추가할 수 없습니다.")
        } else {
            menuItems[numberOfItems] = menuItem
            numberOfItems += 1
        }
    }
    
    func getMenuItems() -> [MenuItem] {
        return menuItems
    }
}
