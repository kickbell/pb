

//
//  main.swift
//  CodingTest
//
//  Created by jc.kim on 11/12/22.
//

//https://www.acmicpc.net/problem/1874
//
//총 8개가 들어오고, 스택을 이용해서 +/- 해서 예제대로 만들 수 있는지를 검사한다.
/*
 8 - 총 n의 갯수
 
 내가 원하는 숫자
 4
 3
 6
 8
 7
 5
 2
 1
 */



import Foundation

var n = Int(readLine()!)!
var stack: [Int] = []
var result: [String] = []
var count = 1

(1...n).forEach { _ in
    let input = Int(readLine()!)!
    
    while count <= input {
        stack.append(count)
        count += 1
        result.append("+")
    }
    
    if stack.last ?? 0 == input {
        _ = stack.popLast()
        result.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

result.forEach {
    print($0)
}
