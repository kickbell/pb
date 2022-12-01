//
//  Waitress.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation

class Waitress {
    let pancakeHouseMenu: PancakeHouseMenu
    let objectDinerMenu: ObjectDinerMenu
    
    init(_ pancakeHouseMenu: PancakeHouseMenu,
         _ objectDinerMenu: ObjectDinerMenu) {
        self.pancakeHouseMenu = pancakeHouseMenu
        self.objectDinerMenu = objectDinerMenu
    }
    
    func printMenu() {
        let objectDinerIterator = objectDinerMenu.createIterator()
        let pancakeHouseIterator = pancakeHouseMenu.createIterator()
        
        print("------------------------ 메뉴판 ------------------------")
        print("\n< 아침 메뉴 >")
        printMenu(pancakeHouseIterator)
        print("\n< 점심 메뉴 >")
        printMenu(objectDinerIterator)
    }
    
    private func printMenu(_ iterator: Iterator) {
        while iterator.hasNext() {
            let menuItem = iterator.next()
            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
        }
    }
}
