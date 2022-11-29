//
//  DuckAdapter.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

class DuckAdapter: Turkey {
    let duck: Duck
    
    init(_ duck: Duck) {
        self.duck = duck
    }
    
    func gobble() {
        duck.quack()
    }
    
    func fly() {
        duck.fly()
    }
}
