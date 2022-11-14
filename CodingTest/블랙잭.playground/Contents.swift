
//https://www.acmicpc.net/problem/2798
//5 21
//5 6 7 8 9

//카드의 개수 N = 5
//M을 넘지 않으면서 M에 최대한 가까운 카드 3장의 합 = 21
//주어진 카드 5, 6, 7, 8, 9

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


