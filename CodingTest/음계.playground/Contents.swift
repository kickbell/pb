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

scale1()


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

scale2()
