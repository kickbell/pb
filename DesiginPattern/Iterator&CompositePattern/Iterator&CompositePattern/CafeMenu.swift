//
//  CafeMenu.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

class CafeMenu {
    var menuItems: [String:MenuItem] = [:]
    
    init() {
        addItem("베지 버거와 에어 프라이",
                "통밀빵, 상추, 토마토, 감자튀김이 들어간 베지 버거",
                true,
                3.99)
        
        addItem("오늘의 스프",
                "샐러드가 곁들여진 오늘의 스프",
                false,
                3.69)
        
        addItem("부리토",
                "통 핀토콩과 살사, 구아카몰이 곁들여진 푸짐한 부리토",
                true,
                4.29)
    }
    
    func addItem(_ name: String,
                 _ description: String,
                 _ vegetarian: Bool,
                 _ price: Double) {
        let menuItem = MenuItem(name, description, vegetarian, price)
        menuItems[name] = menuItem
    }
    
    func createIterator() -> Iterator {
        return CafeMenuIterator(menuItems)
    }
}
