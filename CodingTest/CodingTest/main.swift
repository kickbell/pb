//
//  main.swift
//  CodingTest
//
//  Created by jc.kim on 11/12/22.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
let n = nm.first ?? 0
let m = nm.last ?? 0
let data = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

var result = 0
var length = data.count
var count = 0

for i in 0..<length {
    for j in i+1..<length {
        for k in j+1..<length {
            let sum = data[i] + data[j] + data[k]
            if sum <= m {
                result = max(result, sum)
            }
        }
    }
}

print(result)



