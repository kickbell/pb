

//
//  main.swift
//  CodingTest
//
//  Created by jc.kim on 11/12/22.
//



/*
 5
 3 2 1 -3 -1
 
 
 1 4 5 3 2
 */

import Foundation

let n = Int(readLine()!)!
var deque: [(idx: Int, element: Int)] = readLine()!.split(separator: " ").enumerated().map { ($0+1, Int($1)!) }
var result: [Int] = []

for _ in 1...n {
    let target = deque.first!
    result.append(target.idx)
    
    if target.element > 0 {
        for _ in 1...target.element {
            deque.append(deque.removeFirst())
        }
    } else {
        for _ in 1...abs(target.element) {
            deque.insert(deque.removeLast(), at: 0)
        }
    }
    
    if let idx = deque.firstIndex(where: { $0 == target}) {
        deque.remove(at: idx)
    }
}

print(result.map { String($0) }.joined(separator: " "))



















