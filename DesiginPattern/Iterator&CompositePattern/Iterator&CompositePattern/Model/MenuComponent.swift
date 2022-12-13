//
//  MenuComponent.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

protocol MenuComponent {
    var name: String { get }
    var description: String { get }
    var vegetarian: Bool { get }
    var price: Double { get }
    
    func add(_ menuComponent: MenuComponent)
    func remove(_ menuComponent: MenuComponent)
    func getChild(_ i: Int) -> MenuComponent?
    func print()
}
/*
 기본 구현 넣어주기
 에러를 던져서 thorws로 처리를 해도 되긴 하다.
 */
extension MenuComponent {
    var name: String { "" }
    var description: String { "" }
    var vegetarian: Bool { false }
    var price: Double { 0.0 }
    
    func add(_ menuComponent: MenuComponent) { }
    func remove(_ menuComponent: MenuComponent)  { }
    func getChild(_ i: Int) -> MenuComponent? { nil }
    func print()  { }
}


