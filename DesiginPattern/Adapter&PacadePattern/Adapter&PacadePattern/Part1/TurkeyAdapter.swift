//
//  TurkeyAdapter.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

class TurkeyAdapter: Duck {
    let turkey: Turkey
    
    init(_ turkey: Turkey) {
        self.turkey = turkey
    }
    
    func quack() {
        turkey.gobble()
    }
    
    func fly() {
        (0...5).forEach { _ in
            turkey.fly()
        }
    }
}
