//
//  EnumerationIterator.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

class EnumerationIterator {
    let enumeration: Enumeration
    
    init(enumeration: Enumeration) {
        self.enumeration = enumeration
    }

    typealias Item = String //String 타입으로 리턴하기로 결정 !

    func hasNext() -> [String] {
        return enumeration.hasMoreElements()
    }

    func next() -> String {
        return enumeration.nextElement()
    }

    func remove() {
        fatalError("지원하지 않는 메소드입니다.")
    }
}
  
