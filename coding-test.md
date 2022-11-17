##

## 백준 주의사항
- import Foundation 안적어주면 components 같은 것들 컴파일 에러 발생함.
- playground 상에서는 readLine()이 안먹힘. main에서 실행 후 완성된 코드만 옮겨야함.

## 음계 - [2920](https://www.acmicpc.net/problem/2920)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
import UIKit

//https://www.acmicpc.net/problem/2920
//변수 2개를 두고 for문 돌아서 앞에거와 뒤에거를 비교해서 변수를 변경하는 것이 핵심로직
func scale1() {
    print("음계를 입력해주세요.")
    let input = readLine() ?? ""
    var ascending = true
    var descending = true

    let data: [Int] = input.split(separator: " ").map { Int($0) ?? 0 }

    for i in 0..<data.count {
        if i+1 == data.count { break }
        
        if data[i+1] > data[i] {
            descending = false
        } else if data[i+1] < data[i] {
            ascending = false
        }
    }

    if ascending {
        print("ascending")
    } else if descending {
        print("descending")
    } else {
        print("mixed")
    }
}

func scale2() {
    let input = readLine() ?? ""
    let data = input.components(separatedBy: " ")
    
    if data == data.sorted(by: <) {
        print("ascending")
    } else if data == data.sorted(by: >) {
        print("descending")
    } else {
        print("mixed")
    }
}

scale1()
scale2()
```
  </p>
</details>


## 블랙잭 - [2798](https://www.acmicpc.net/problem/2798)        
<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/201612386-25c8c9c3-d26a-439c-b92a-4573514b658e.png">
<details>
  <summary> 정답 </summary>
  <p>

```swift
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
//            print(data[i], data[j], data[k])
        }
    }
}

print(result)
```
  </p>
</details>

## 스택수열 - [1874](https://www.acmicpc.net/problem/1874)       
<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/201613018-1e53d6b7-2b9e-47a8-83f7-f5a5149d1aca.png">
<details>
  <summary> 정답 </summary>
  <p>

```swift
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

```
  </p>
</details>

## 프린터큐 - [1966](https://www.acmicpc.net/problem/1966)        
<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/201834572-151a720e-3fb7-4953-a0f7-a961c4601b37.png">
<details>
  <summary> 정답 </summary>
  <p>

```swift
import Foundation

let testCaseNumber = readLine()!.components(separatedBy: " ").map { Int($0)! }.first ?? 0

for _ in 1...testCaseNumber {
    let m = readLine()!.components(separatedBy: " ").map { Int($0)! }.last ?? 0
    let queue = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var tQueue: [(idx: Int, priority: Int)] = queue.enumerated().map { ($0, $1)}
    var count = 0
    
    while true {
        if tQueue.first?.priority ?? 0 == tQueue.max(by: { $0.priority < $1.priority })?.priority ?? 0 {
            count += 1
            if tQueue.first?.idx ?? 0 == m {
                print(count)
                break
            } else {
                tQueue.removeFirst()
            }
        } else {
            tQueue.append(tQueue.removeFirst())
        }
    }
}
```
  </p>
</details>

## 키로거 - [5397](https://www.acmicpc.net/problem/5397)      
![image](https://user-images.githubusercontent.com/85085822/201849416-d839ea3f-7db4-45bf-a50b-bd36c323c1ed.png)
<details>
  <summary> 정답 </summary>
  <p>

```swift

import Foundation

let testCaseNumber = readLine()!.split(separator: " ").map { Int($0)!}.first ?? 0

for _ in 1...testCaseNumber {
    let data: [String] = readLine()!.map { String($0) }
    var leftStack: [String] = []
    var rightStack: [String] = []

    data.forEach {
        switch $0 {
        case "<":
            if !leftStack.isEmpty { rightStack.append(leftStack.removeLast()) }
        case ">":
            if !rightStack.isEmpty { leftStack.append(rightStack.removeLast()) }
        case "-":
            if !leftStack.isEmpty { leftStack.removeLast() }
        default:
            leftStack.append($0)
        }
    }
    
    print(leftStack.joined() + rightStack.reversed().joined())
}


//테스트 케이스

//ABC<<D>E<<F>>--
//ADFC

//ab<-c
//cb


//실패한 풀이
//for _ in 1...testCaseNumber {
//
//    var data: [String] = readLine()!.map { String($0) }
//    var stack: [String] = []
//    var cursorIdx = 0
//
//    guard data.contains("<") || data.contains(">") || data.contains("-") else {
//        print(data.joined())
//        exit(0)
//    }
//
//    while !data.isEmpty {
//        let value = data.first ?? ""
//
//        switch value {
//        case "<":
//            if cursorIdx > 0 { cursorIdx -= 1 }
//        case ">":
//               cursorIdx = min(stack.count, cursorIdx + 1)
//        case "-":
//            if cursorIdx > 0 { cursorIdx -= 1 }
//            _ = stack.remove(at: cursorIdx)
//        default:
//            stack.insert(value, at: cursorIdx)
//            cursorIdx = min(stack.count, cursorIdx + 1)
//        }
//
//        data.removeFirst()
//    }
//
//    print(stack.joined())
//}

```
  </p>
</details>





## 수 찾기 - [1920](https://www.acmicpc.net/problem/1920)                  
- 특정 정수의 등장여부만을 체크할 때, Set를 활용하면 좋다.
- 아래 코드에서 Set을 사용하지 않으면 시간초과가 발생한다. 
<details>
  <summary> 정답 </summary>
  <p>

```swift
import Foundation

let n = readLine()!.map { String($0) }.map { Int($0)! }.first ?? 0
let nList = Set(readLine()!.split(separator: " ").map { Int($0)! })
let m = readLine()!.map { String($0) }.map { Int($0)! }.first ?? 0
let mList = readLine()!.split(separator: " ").map { Int($0)! }

mList.forEach {
    if nList.contains($0) {
        print("1")
    } else {
        print("0")
    }
}
```
  </p>
</details>







## 친구 네트워크 - [4195](https://www.acmicpc.net/problem/4195)               
<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/202444181-0dcdc861-fe72-40ca-b2f2-657fa54cc54e.png">      
<details>
  <summary> 정답 </summary>
  <p>

```swift

import Foundation

let testCaseNumber = Int(readLine()!)!

for _ in 1...testCaseNumber {
    func find(_ x: String) -> String {
        if x == parent[x]! {
            return x
        } else {
            let p = find(parent[x]!)
            parent[x] = p
            return parent[x]!
        }
    }

    func union(_ x: String,_ y: String) {
        let x = find(x)
        let y = find(y)
        
        if x != y {
            parent[y] = x //루트를 바꿔주는 작업
            number[x]! += number[y]! //네트워크 수 증가 작업
        }
    }
    
    let f = Int(readLine()!)!
    var parent: [String: String] = [:]
    var number: [String: Int] = [:]
    
    for _ in 1...f {
        //입력받은 값 가져오기
        let fList = readLine()!.split(separator: " ")
        let left = String(fList[0])
        let right = String(fList[1])
        
        //초기값 할당, 값이 없다면 자신의 루트는 자신으로. 네트워크 값은 1로.
        if parent[left] == nil {
            parent[left] = left
            number[left] = 1
        }
        if parent[right] == nil {
            parent[right] = right
            number[right] = 1
        }
        
        union(left, right) //left를 right의 부모로 만들기
        print(number[find(left)]!)
    }
}

```
  </p>
</details>

## 스택 - [10828](https://www.acmicpc.net/problem/10828)        
<details>
  <summary> 정답 </summary>
  <p>

```swift

import Foundation

let testCaseNumber = Int(readLine()!)!

let stack = Stack()

for _ in 1...testCaseNumber {
    let input = readLine()!.split(separator: " ")
    
    switch input[0] {
    case "push": stack.push(Int(input[1])!)
    case "pop": stack.pop()
    case "size": stack.size()
    case "empty": stack.empty()
    case "top": stack.top()
    default: break
    }
}

class Stack {
    var stack: [Int] = []
    
    func push(_ data: Int) {
        stack.append(data)
    }
    
    func pop() {
        print(stack.popLast() ?? -1)
    }
    
    func size() {
        print(stack.count)
    }
    
    func empty() {
        if stack.isEmpty {
            print("1")
        } else {
            print("0")
        }
    }
    
    func top() {
        print(stack.last ?? -1)
    }
}


```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## 제로 - [10773](https://www.acmicpc.net/problem/10773)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
import Foundation

let testCaseNumber = Int(readLine()!)!
var sum: [Int] = []

for _ in 1...testCaseNumber {
    let input = Int(readLine()!)!
    input == 0 ? _ = sum.popLast() : sum.append(input)
}

print(sum.reduce(0, +))
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>


## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>


## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>


## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>


## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>


## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>

## ? - [1](https://www.acmicpc.net/problem/1)        
<details>
  <summary> 정답 </summary>
  <p>

```swift
```
  </p>
</details>



