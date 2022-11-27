////
////  SimplePizzaFactory.swift
////  FactoryPattern
////
////  Created by jc.kim on 11/25/22.
////
//
//import Foundation
//
//protocol Factory {
//    func createPizza(_ type: String) -> Pizza
//}
//
//class SimplePizzaFactory: Factory {
//    func createPizza(_ type: String) -> Pizza {
//        var pizza: Pizza = CheesePizza()
//        /*
//         메뉴 추가/삭제에 따라 변하는 부분
//         객체 생성 코드
//         */
//        if type == "cheese"{ //치즈
//            pizza = CheesePizza()
////        } else if type == "greek" { //그리스
////            pizza = GreekPizza()
//        } else if type == "pepperoni" { //페퍼로니
//            pizza = PepperoniPizza()
//        } else if type == "clam" { //조개
//            pizza = ClamPizza()
//        } else if type == "veggie" { //야채
//            pizza = VeggiePizza()
//        }
//        
//        return pizza
//    }
//}
