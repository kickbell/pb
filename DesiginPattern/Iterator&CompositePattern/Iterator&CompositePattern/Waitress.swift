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
    
    init(_ pancakeHouseMenu: PancakeHouseMenu,
         _ objectDinerMenu: ObjectDinerMenu) {
        self.pancakeHouseMenu = pancakeHouseMenu
        self.objectDinerMenu = objectDinerMenu
    }
    
//    func prentMenus() {
//        let breakfastItems = pancakeHouseMenu.getMenuItems()
//        let lunchItems = objectDinerMenu.getMenuItems()
//
//        print("------------------------ 메뉴판 ------------------------")
//        print("\n< 아침 메뉴 >")
//        for i in 0..<breakfastItems.count {
//            let menuItem = breakfastItems[i]
//            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
//        }
//        print("\n< 점심 메뉴 >")
//        for i in 0..<lunchItems.count {
//            let menuItem = lunchItems[i]
//            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
//        }
//    }
    
    func printMenu() {
        let objectDinerIterator = objectDinerMenu.makeIterator()
        let pancakeHouseIterator = pancakeHouseMenu.makeIterator()
        
        print("------------------------ 메뉴판 ------------------------")
        print("\n< 아침 메뉴 >")
        printMenu(pancakeHouseIterator)
//        while pancakeHouseIterator.hasNext() {
//            guard let menuItem = pancakeHouseIterator.next() else { return }
//            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
//        }
        print("\n< 점심 메뉴 >")
        printMenu(objectDinerIterator)
//        while objectDinerIterator.hasNext() {
//            guard let menuItem = objectDinerIterator.next() else { return }
//            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
//        }
    }
    
    private func printMenu(_ iterator: AnyIterator<MenuItem>) {
        iterator.forEach { _ in
            guard let menuItem = iterator.next() else { return }
            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
        }
//        while iterator.hasNext() {
//            let menuItem = iterator.next()
//            print("\(menuItem.name), \(menuItem.price) -- \(menuItem.description)")
//        }
    }
}
