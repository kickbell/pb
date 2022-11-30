//
//  Duck.swift
//  TemplateMethodPattern
//
//  Created by jc.kim on 12/1/22.
//

import Foundation

class Duck: Comparable {
    static func < (lhs: Duck, rhs: Duck) -> Bool {
        return lhs.weight < rhs.weight
    }
    
    static func == (lhs: Duck, rhs: Duck) -> Bool {
        return lhs.weight == lhs.weight
    }
    
    let name: String
    let weight: Int
    
    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
    
    func toString() -> String {
        return "\(name) 체중: \(weight)"
    }
}
