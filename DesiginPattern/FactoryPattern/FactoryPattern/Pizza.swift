//
//  Pizza.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/25/22.
//

import Foundation

protocol Pizza {
    var name: String { get }
    var dough: String { get }
    var sauce: String { get }
    var toppings: [String] { get }
    
    func prepare()
    func bake()
    func cut()
    func box()
    func getName() -> String
}

extension Pizza {
    var name: String {
        return String(describing: self)
    }
    
    var dough: String {
        return ["치즈 크러스트 도우",
                "바이트 도우",
                "고구마 무스",
                "씬 크러스트 도우"].randomElement()!
    }
    
    var sauce: String {
        return ["토마토 소스",
                "마리나라 소스",
                "어니언 소스",
                "갈릭 소스"].randomElement()!
    }
    
    var toppings: [String] {
        let toppingList: [String] = [
            "모짜렐라 치즈", "레지아노 치즈",
            "파마산 치즈", "새우", "감자", "소시지"]
        let count = (1...toppingList.count).randomElement() ?? 0
        var toppings: [String] = []
        for _ in 0..<count {
            toppings.append(toppingList.randomElement() ?? "")
        }
        return toppings
    }
    
    func prepare() {
        print("\n\n===== Order =====")
        print("준비 중: \(name)")
        print("도우를 돌리는 중...")
        print("소스를 뿌리는 중...")
        print("토핑를 올리는 중...")
        toppings.forEach { topping in
            print(" \(topping)")
        }
    }
    
    func bake() {
        print("175도에서 25분 간 굽기")
    }
    
    func cut() {
        print("피자를 사선으로 자르기")
    }
    
    func box() {
        print("상자에 피자 담기")
    }
    
    func getName() -> String {
        return name
    }
}


class EmptyPizza: Pizza {}
class CheesePizza: Pizza {}
class GreekPizza: Pizza {}
class PepperoniPizza: Pizza {}
class ClamPizza: Pizza {}
class VeggiePizza: Pizza {}

class NYStyleCheesePizza: Pizza {}
class NYStyleGreekPizza: Pizza {}
class NYStylePepperoniPizza: Pizza {}
class NYStyleClamPizza: Pizza {}
class NYStyleVeggiePizza: Pizza {}

class ChicagoStyleCheesePizza: Pizza {
    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
    func cut() {
        print("네모난 모양으로 자르기")
    }
}
class ChicagoStyleGreekPizza: Pizza {
    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
    func cut() {
        print("네모난 모양으로 자르기")
    }
}
class ChicagoStylePepperoniPizza: Pizza {
    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
    func cut() {
        print("네모난 모양으로 자르기")
    }
}
class ChicagoStyleClamPizza: Pizza {
    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
    func cut() {
        print("네모난 모양으로 자르기")
    }
}
class ChicagoStyleVeggiePizza: Pizza {
    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
    func cut() {
        print("네모난 모양으로 자르기")
    }
}

class CaliforniaStyleCheesePizza: Pizza {}
class CaliforniaGreekPizza: Pizza {}
class CaliforniaPepperoniPizza: Pizza {}
class CaliforniaClamPizza: Pizza {}
class CaliforniaVeggiePizza: Pizza {}
