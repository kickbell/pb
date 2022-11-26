//
//  Singleton.swift
//  SingletonPattern
//
//  Created by jc.kim on 11/26/22.
//

import Foundation

class Singleton {
    private init() { }
    
    private static var uniqueInstance: Singleton?
    
    static func getInstance() -> Singleton {
        //lazy 키워드를 쓰지 않고 lazy하게 사용
        //Singleton 객체를 한번도 사용하지 않는다면 생성되지 않으므로 그만큼 메모리 절약
        if uniqueInstance == nil {
            uniqueInstance = Singleton()
        }
        return uniqueInstance!
    }
}
    
//class Singleton {
//    private init() { }
//
//    //lazy는 static 키워드로 사용이 불가
//    //'lazy' cannot be used on an already-lazy global
//    private lazy var uniqueInstance: Singleton = Singleton()
//
//    //uniqueInstance가 타입 인스턴스가 아니기 때문에 여기서도 static 삭제
//    //Instance member 'uniqueInstance' cannot be used on type 'Singleton'
//    func getInstance() -> Singleton {
//        return uniqueInstance
//    }
//}
