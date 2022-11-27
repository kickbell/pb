//
//  Pizza.swift
//  FactoryPattern
//
//  Created by jc.kim on 11/25/22.
//

import Foundation

protocol Pizza {
    var name: String { get set }
    var dough: Dough { get set }
    var sauce: Sauce { get set }
    var veggies: [Veggie] { get set }
    var cheese: Cheese { get set }
    var pepperoni: Peppernoni { get set }
    var clam: Clams { get set }
    
    func prepare() //추상메소드
    func bake()
    func cut()
    func box()
    func getName() -> String
}

extension Pizza {
//    var name: String { String(describing: self) }
//
//    var dough: String {
//        return ["치즈 크러스트 도우",
//                "바이트 도우",
//                "고구마 무스",
//                "씬 크러스트 도우"].randomElement()!
//    }
//
//    var sauce: String {
//        return ["토마토 소스",
//                "마리나라 소스",
//                "어니언 소스",
//                "갈릭 소스"].randomElement()!
//    }
//
//    var toppings: [String] {
//        let toppingList: [String] = [
//            "모짜렐라 치즈", "레지아노 치즈",
//            "파마산 치즈", "새우", "감자", "소시지"]
//        let count = (1...toppingList.count).randomElement() ?? 0
//        var toppings: [String] = []
//        for _ in 0..<count {
//            toppings.append(toppingList.randomElement() ?? "")
//        }
//        return toppings
//    }
    
//    func prepare() {
//        print("\n\n===== Order =====")
//        print("준비 중: \(name)")
//        print("도우를 돌리는 중...")
//        print("소스를 뿌리는 중...")
//        print("토핑를 올리는 중...")
//        toppings.forEach { topping in
//            print(" \(topping)")
//        }
//    }
    
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


class BasicPizza: Pizza {
    var name: String = ""
    var dough: Dough = BasicDough()
    var sauce: Sauce = BasicSauce()
    var veggies: [Veggie] = []
    var cheese: Cheese = BasicCheese()
    var pepperoni: Peppernoni = BasicPeppernoni()
    var clam: Clams = BasicClams()
    func prepare() {}
}

/*
 lazy 키워드를 사용하면 초기값을 주지 않아도 되지만 이게 맞는지는 모르겠군.
 애초에 프로토콜을 준수하려면 꼭 구현해야 하기 때문..
 */
class CheesePizza: Pizza {
    var name: String = ""
    lazy var dough: Dough = ingredienFactory.createDough()
    lazy var sauce: Sauce = ingredienFactory.createSauce()
    var veggies: [Veggie] = []
    lazy var cheese: Cheese = ingredienFactory.createCheese()
    var pepperoni: Peppernoni = BasicPeppernoni()
    var clam: Clams = BasicClams()
    
    let ingredienFactory: PizzaIngredientFactory
    
    init(ingredienFactory: PizzaIngredientFactory) {
        self.ingredienFactory = ingredienFactory
    }
    
    func prepare() {
        print("\n\n===== Order =====")
        print("준비 중: " + name)
//        dough = ingredienFactory.createDough()
//        sauce = ingredienFactory.createSauce()
//        cheese = ingredienFactory.createCheese()
    }
}
//class GreekPizza: Pizza {}
class PepperoniPizza: Pizza {
    var name: String = ""
    var dough: Dough = BasicDough()
    var sauce: Sauce = BasicSauce()
    var veggies: [Veggie] = []
    var cheese: Cheese = BasicCheese()
    var pepperoni: Peppernoni = BasicPeppernoni()
    var clam: Clams = BasicClams()
    
    let ingredienFactory: PizzaIngredientFactory
    
    init(ingredienFactory: PizzaIngredientFactory) {
        self.ingredienFactory = ingredienFactory
    }
    
    func prepare() {
        print("\n\n===== Order =====")
        print("준비 중: " + name)
        dough = ingredienFactory.createDough()
        sauce = ingredienFactory.createSauce()
        cheese = ingredienFactory.createCheese()
        clam = ingredienFactory.createClam()
    }
}
class ClamPizza: Pizza {
    var name: String = ""
    var dough: Dough = BasicDough()
    var sauce: Sauce = BasicSauce()
    var veggies: [Veggie] = []
    var cheese: Cheese = BasicCheese()
    var pepperoni: Peppernoni = BasicPeppernoni()
    var clam: Clams = BasicClams()
    
    let ingredienFactory: PizzaIngredientFactory
    
    init(ingredienFactory: PizzaIngredientFactory) {
        self.ingredienFactory = ingredienFactory
    }
    
    func prepare() {
        print("\n\n===== Order =====")
        print("준비 중: " + name)
        dough = ingredienFactory.createDough()
        sauce = ingredienFactory.createSauce()
        cheese = ingredienFactory.createCheese()
        pepperoni = ingredienFactory.createPepperoni()
    }
}
class VeggiePizza: Pizza {
    var name: String = ""
    var dough: Dough = BasicDough()
    var sauce: Sauce = BasicSauce()
    var veggies: [Veggie] = []
    var cheese: Cheese = BasicCheese()
    var pepperoni: Peppernoni = BasicPeppernoni()
    var clam: Clams = BasicClams()
    
    let ingredienFactory: PizzaIngredientFactory
    
    init(ingredienFactory: PizzaIngredientFactory) {
        self.ingredienFactory = ingredienFactory
    }
    
    func prepare() {
        print("\n\n===== Order =====")
        print("준비 중: " + name)
        dough = ingredienFactory.createDough()
        sauce = ingredienFactory.createSauce()
        cheese = ingredienFactory.createCheese()
        veggies = ingredienFactory.createVeggies()
    }
}
//
//class NYStyleCheesePizza: Pizza {}
//class NYStyleGreekPizza: Pizza {}
//class NYStylePepperoniPizza: Pizza {}
//class NYStyleClamPizza: Pizza {}
//class NYStyleVeggiePizza: Pizza {}
//
//class ChicagoStyleCheesePizza: Pizza {
//    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
//    func cut() {
//        print("네모난 모양으로 자르기")
//    }
//}
//class ChicagoStyleGreekPizza: Pizza {
//    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
//    func cut() {
//        print("네모난 모양으로 자르기")
//    }
//}
//class ChicagoStylePepperoniPizza: Pizza {
//    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
//    func cut() {
//        print("네모난 모양으로 자르기")
//    }
//}
//class ChicagoStyleClamPizza: Pizza {
//    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
//    func cut() {
//        print("네모난 모양으로 자르기")
//    }
//}
//class ChicagoStyleVeggiePizza: Pizza {
//    //오버라이드, 시카고 피자는 네모나게 잘라야 한다.
//    func cut() {
//        print("네모난 모양으로 자르기")
//    }
//}
//
//class CaliforniaStyleCheesePizza: Pizza {}
//class CaliforniaGreekPizza: Pizza {}
//class CaliforniaPepperoniPizza: Pizza {}
//class CaliforniaClamPizza: Pizza {}
//class CaliforniaVeggiePizza: Pizza {}
