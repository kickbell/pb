//
//  Menu.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

class Menu: MenuComponent {
    var menus: [MenuComponent] = []
    let name: String
    let description: String
    
    init(_ name: String,_ description: String) {
        self.name = name
        self.description = description
    }
    
    func add(_ menuComponent: MenuComponent) {
        menus.append(menuComponent)
    }
    
    func remove(_ menuComponent: MenuComponent) {
        menus.remove(at: 0)
    }
    
    func getChild(_ i: Int) -> MenuComponent? {
        menus[i]
    }
    
    func print() {
        Swift.print("\n  \(name), \(description)")
        Swift.print("----------------------------------------")
        
        menus.forEach { menuComponent in
            menuComponent.print()
        }
    }
}
