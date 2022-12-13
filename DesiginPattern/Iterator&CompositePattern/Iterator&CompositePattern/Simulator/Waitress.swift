//
//  Waitress.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation

//종업원
class Waitress {
    let allMenus: MenuComponent
    
    init(_ allMenus: MenuComponent) {
        self.allMenus = allMenus
    }
    
    func printMenu() {
        allMenus.print()
    }
}
