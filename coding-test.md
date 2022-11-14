## 
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


<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/201612386-25c8c9c3-d26a-439c-b92a-4573514b658e.png">
<img width="" alt="image" src="https://user-images.githubusercontent.com/85085822/201613018-1e53d6b7-2b9e-47a8-83f7-f5a5149d1aca.png">




