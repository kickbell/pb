//
//  GooseAdapter.swift
//  MultiPattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

class Goose {
    func honk() {
        print("끽끽")
    }
}

class GooseAdapter: Quackable {
    let goose: Goose
    
    init(_ goose: Goose) {
        self.goose = goose
    }
    
    func quack() {
        goose.honk()
    }
}
