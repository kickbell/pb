//
//  MenuComponent.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

enum MenuError: Error {
    case UnsupportedOperationException
}

protocol MenuComponent {
    func add(_ menuComponent: MenuComponent)
    func remove(_ menuComponent: MenuComponent)
    func getChild(_ i: Int) -> MenuComponent?
    func print()
}

extension MenuComponent {
    func add(_ menuComponent: MenuComponent) { }
    func remove(_ menuComponent: MenuComponent)  { }
    func getChild(_ i: Int) -> MenuComponent? { nil }
    func print()  { }
}



