//
//  Iterator.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

protocol Iterator {
    func next() -> MenuItem?
}

class PancakeHouseMenuIterator: Iterator {
    var position = 0

    var menuItems: [MenuItem]
    
    init(_ menuItems: [MenuItem]) {
        self.menuItems = menuItems
    }
    
    func next() -> MenuItem? {
        defer { position += 1 }
        guard position < menuItems.count else { return nil }
        return self.menuItems[position]
    }
}

class ObjectDinerMenuIterator: Iterator {
    var position = 0

    var menuItems: [MenuItem]
    
    init(_ menuItems: [MenuItem]) {
        self.menuItems = menuItems
    }
    
    func next() -> MenuItem? {
        defer { position += 1 }
        guard position < menuItems.count else { return nil }
        return self.menuItems[position]
    }
}

class CafeMenuIterator: Iterator {
    var position = 0

    var menuItems: [String: MenuItem]
    
    init(_ menuItems: [String: MenuItem]) {
        self.menuItems = menuItems
    }
    
    func next() -> MenuItem? {
        guard let popFirst = self.menuItems.popFirst() else { return nil }
        return popFirst.value
    }
}

