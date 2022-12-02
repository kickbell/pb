//
//  Iterator.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/2/22.
//

import Foundation

//protocol Iterator {
//    func hasNext() -> Bool
//    func next() -> MenuItem
//}

class ObjectDinerIterator: IteratorProtocol {
    typealias Element = MenuItem
    
    let items: [MenuItem]
    var position = 0 //반복 작업이 처리되고 있는 위치
    
    init(_ items: [MenuItem]) {
        self.items = items
    }
    
    /*
     ObjectDinerIterator는 갯수가 정해진 Array를 사용했다는 가정이기 때문에,
     position >= items.count 외에도 item[position] 값이 nil인지 확인이 필요하다.
     하지만 swift에서는 지금 임시로 MenuItem("", "", false, 0.0)로 빈배열을
     채워넣었기 때문에 비었는지 판단 여부를 items[position].name == "" 로 하고 있다.
     */
    func hasNext() -> Bool {
        if position >= items.count || items[position].name == "" {
            return false
        } else {
            return true
        }
    }
    
    func next() -> MenuItem? {
        let menuItem = items[position]
        position += 1
        return menuItem
    }
}

class PancakeHouseIterator: IteratorProtocol {
    typealias Element = MenuItem
    
    let items: [MenuItem]
    var position = 0 //반복 작업이 처리되고 있는 위치
    
    init(_ items: [MenuItem]) {
        self.items = items
    }
    
    func hasNext() -> Bool {
        if position >= items.count {
            return false
        } else {
            return true
        }
    }
    
    func next() -> MenuItem? {
        let menuItem = items[position]
        position += 1
        return menuItem
    }
}
