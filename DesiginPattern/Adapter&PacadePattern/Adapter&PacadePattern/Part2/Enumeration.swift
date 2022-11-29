//
//  Enumeration.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

//원래는 얘에도 타입이 지정되어야 하는데, 구성으로 해버리면 Swift에서는 컴파일 에러가 발생.
protocol Enumeration {
    func hasMoreElements() -> [String]
    func nextElement() -> String
}
