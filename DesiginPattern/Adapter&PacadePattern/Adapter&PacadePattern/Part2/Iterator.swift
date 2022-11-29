//
//  Iterator.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

protocol Iterator {
    associatedtype Item //타입은 나중에 결정할게!
    func hasNext() -> [Item]
    func next() -> Item
    func remove()
}



  
    
    

    
