//
//  Waitress.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation

//종업원
class Waitress {
    let pancakeHouseMenu: PancakeHouseMenu
    let objectDinerMenu: ObjectDinerMenu
    let cafeMenu: CafeMenu
    
    init(_ pancakeHouseMenu: PancakeHouseMenu,
         _ objectDinerMenu: ObjectDinerMenu,
         _ cafeMenu: CafeMenu
    ) {
        self.pancakeHouseMenu = pancakeHouseMenu
        self.objectDinerMenu = objectDinerMenu
        self.cafeMenu = cafeMenu
    }
    
    func printMenu() {
        let pancakeHouseIterator = pancakeHouseMenu.createIterator()
        let objectDinerIterator = objectDinerMenu.createIterator()
        let cafeIterator = cafeMenu.createIterator()
        
        print("------------------------ 메뉴판 ------------------------")
        print("\n< 아침 메뉴 >")
        printMenu(pancakeHouseIterator)
        print("\n< 점심 메뉴 >")
        printMenu(objectDinerIterator)
        print("\n< 카페 메뉴 >")
        printMenu(cafeIterator)
    }
    
    func printMenu(_ iterator: Iterator) {
        while let menuItem = iterator.next() {
            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
        }
    }
}
