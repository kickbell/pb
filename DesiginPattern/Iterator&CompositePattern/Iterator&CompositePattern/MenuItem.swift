//
//  MenuItem.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation

class MenuItem {
    let name: String
    let description: String
    let vegetarian: Bool
    let price: Double
    
    init(_ name: String,
         _ description: String,
         _ vegetarian: Bool,
         _ price: Double) {
        self.name = name
        self.description = description
        self.vegetarian = vegetarian
        self.price = price
    }
}
