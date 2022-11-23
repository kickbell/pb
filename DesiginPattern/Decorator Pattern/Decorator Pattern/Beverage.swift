//
//  Beverage.swift
//  Decorator Pattern
//
//  Created by jc.kim on 11/23/22.
//

import Foundation

class Beverage {
    enum Size { case TALL, GRANDE, VENTI }
    var size: Size = .TALL
    var description: String = "제목 없음"
    
    func getDescription() -> String {
        return self.description
    }
    
    func cost() -> Double {
        return 0.0
    }
    
    func setSize(_ size: Size) {
        self.size = size
    }
    
    func getSize() -> Size {
        return self.size
    }
}

class CondimentDecorator: Beverage {
    var beverage = Beverage()
    
    override func getSize() -> Beverage.Size {
        return beverage.getSize()
    }
}

class HouseBlend: Beverage {
    override init() {
        super.init()
        description = "하우스 블렌드 원두"
    }
    
    override func cost() -> Double {
        return 2.49
    }
}

class DarkRoast: Beverage {
    override init() {
        super.init()
        description = "다크 로스트 원두"
    }
    
    override func cost() -> Double {
        return 2.49
    }
}

class Decaf: Beverage {
    override init() {
        super.init()
        description = "디카페인"
    }
    
    override func cost() -> Double {
        return 2.29
    }
}

class Espresso: Beverage {
    override init() {
        super.init()
        description = "에스프레소"
    }
    
    override func cost() -> Double {
        return 1.99
    }
}



