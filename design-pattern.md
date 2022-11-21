## 디자인 원칙 
- 애플리케이션에서 달라지는 부분을 찾아내고, 달라지지 않는 부분과 분리한다. 
- 구현보다는 인터페이스에 맞춰서 프로그래밍한다. 
- 상속보다는 구성을 활용한다. 

## IS-A, HAS-A 
- IS-A 
	- 객체지향 프로그래밍에서 Inheritance(상속)에 주요 적용되는 개념이다.
    - "A는 B이다."와 같이 사용된다. 
    - 사람은 동물이다/소는 동물이다/새는 동물이다.
    - ![](https://velog.velcdn.com/images/dev_kickbell/post/6d7e6959-106b-4d94-9d15-b531fe393ee8/image.png)					
    -  
    ```swift
    	class Animal {} 
    	class Human: Animal {}
        class Cow: Animal {}
        class Bird: Animal {}
	```

- HAS-A
	- 객체지향 프로그래밍에서 Composition(구성)에 주로 적용되는 개념이다. 
    - "A에는 B가 있다."와 같이 사용된다. 
    - ![](https://velog.velcdn.com/images/dev_kickbell/post/f35363f6-61b1-49d7-9289-40a399256051/image.png)				
    - 
    ```swift
    class CPU {}
    class RAM {}
    class MainBoard {}

    class Computer {
        let cpu: CPU
        let mainBoard: MainBoard
        let ran: RAM

        init(cpu: CPU, mainBoard: MainBoard, ram: RAM) {
            self.cpu = cpu
            self.mainBoard = mainBoard
            self.ram = ram
        }
    }
    ```

## Strategy Pattern(전략 패턴)
- 알고리즘군을 정의하고 캡슐화해서 각각의 알고리즘군을 수정해서 쓸 수 있게 해준다. 
- 클라이언트로부터 알고리즘을 분리해서 독립적으로 변경할 수 있다. 

### 1. 오리게임에서 사용할 오리가 있어요.

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
class Duck {
    func quack() {
        print("꽥꽥하고 웁니다.")
    }
    func swim() {
        print("수영을 합니다.")
    }
    func display() {
        print("오리 종류별로 이미지를 표시합니다.")
    }
}

//청둥오리 또는 물오리
class MallardDuck: Duck {
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }

}

class RedHeadDuck: Duck {
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }
    
}
```
  </p>
</details>



### 2. 경쟁사와의 경쟁을 위해 fly()라는 획기적인 기능을 넣어야 합니다.

### 3. 상속으로 fly() 기능을 넣어보기 
- 상속을 사용했기 때문에 코드를 재사용할 수 있었다. 수정이 발생하면 Duck(부모)클래스만 수정하면 되는 기가막힌 객체지향 프로그래밍 코드이다. 맞을까요 ? 
- 문제가 발생했다. 고무오리가 생겼다. 
- 고무오리는 진짜 동물처럼 꽥꽥하고 울지도, 그리고 날지도 않는다. 
- 괜찮다. 오버라이드하면 되지. 안그래? 
- 그렇지 않다. 만약 나무(tree)오리, 모형(model)오리, 강철(steel)오리가 생긴다면? 
- 그렇게 되면, 매번 새로운 오리가 생길 때마다 fly(), quack() 메소드를 일일히 살펴보고 문제가 있는지 없는지 확인 후 override 해야 한다. 
- 만약에 fly(), quack() 말고 다른 이와 같은 기능이 추가된다면? 또, 나무오리를 상속하는 자작나무오리, 참나무오리, 단풍나무 오리는? 단풍나무 오리를 상속하는 한국단풍나무오리와 일본단풍나무 오리는 어떨까? 
- 결론적으로, 상속은 좋은 해결책이 아니다. 

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
class Duck {
    func quack() {
        print("꽥꽥하고 웁니다.")
    }
    func swim() {
        print("수영을 합니다.")
    }
    func display() {
        print("오리 종류별로 이미지를 표시합니다.")
    }
    func fly() {
        print("오리는 날기도 합니다.")
    }
}

class RubberDuck: Duck {
    
    override func quack() {
        //고무오리는 꽥꽥하고 울지 않으므로
        //삑삑 소리를 내기위해 오버라이드
    }
    
    override func fly() {
        //고무오리는 날지 않으므로 날지않기 위해
        //아무것도 하지 않도록 오버라이드
    }
    
}
```
  </p>
</details>

### 4. 인터페이스(protocol)로 fly() 기능을 넣어보기
- 그렇다면 아래와 같은 그림처럼 인터페이스를 활용하는 방법은 어떨까 ? 
- fly(), quack() 기능만 인터페이스로 빼서 그것을 사용하는 오리에게만 구현하도록 하는 것이다. 좋은 해결책이지 않을까요 ? 
- 슬프게도 이것 또한 정답이 아닙니다. 인터페이스(protocol)만을 사용하게 된다면, 실제 구현은 각 클래스에서 하게 되므로 코드를 재사용하지 않기 때문에 오리가 꽥꽥하고 울다가 꽥-꽥--꽥 하고 울게 변경되면 Quackable를 준수하는 200마리의 종류별 오리 코드를 다 수정해야 합니다. 
- 결국 인터페이스(protocol)도 해결책은 아닙니다. 
- Swift에서는 protocol + extension이 있죠. 얘는 그럼 해결책일까요 ? 

![](https://velog.velcdn.com/images/dev_kickbell/post/38817e7d-ee90-49e4-ab0e-4c8ea1bbcc01/image.png)

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
class Duck {
    func swim() {
        print("수영을 합니다.")
    }
    func display() {
        print("오리 종류별로 이미지를 표시합니다.")
    }
}

protocol Flyable {
    func fly()
}

protocol Quackable {
    func quack()
}

//청둥오리 또는 물오리
class MallardDuck: Duck, Flyable, Quackable {
    
    func fly() {
        print("저는 날 수 있어요.")
    }
    
    func quack() {
        print("꽥꽥")
    }
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }

}

class RedHeadDuck: Duck, Flyable, Quackable {
    
    func fly() {
        print("저는 날 수 있어요.")
    }
    
    func quack() {
        print("꽥꽥")
    }
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }
    
}

//고무오리는 날 수 없기 때문에 Flayable은 준수하지 않아요.
class RubberDuck: Duck, Quackable {
    
    func quack() {
        print("삑삑")
    }
    
}
```
  </p>
</details>


### 5. 바뀌는 부분을 뽑아서 클래스 집합(set)으로 만들기  
- 아래의 그림처럼 바뀌는 부분인 fly()와 quack() 행동을 따로 뽑아서 클래스 집합으로 만듭니다.
- 첫번째 목표는 오리를 유연하게 만들기 위해서 특정 타입으로 초기화 할 수 있게 상위타입으로 protocol을 사용합니다.
- 두번째 목표는 오리의 행동을 동적으로 바꿀 수 있으면 좋을 것 같아요. setter 메소드를 추가합니다.
- 목표만 확인하고 다음으로 넘어가도 좋아요. 

![](https://velog.velcdn.com/images/dev_kickbell/post/a8b6e7c0-272c-4d8d-a506-9caa74414edc/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/78c8588b-db13-4006-bc95-0bbf2f5f0cd6/image.png)

### 6. 코드로 구현하기


<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
class Duck {
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior
    
    init(flyBehavior: FlyBehavior,
         quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }
    
    func setFlyBehavior(_ fb: FlyBehavior) {
        self.flyBehavior = fb
    }
    
    func setQuackBehavior(_ qb: QuackBehavior) {
        self.quackBehavior = qb
    }
    
    func performFly() {
        flyBehavior.fly()
    }
    
    func performQuack() {
        quackBehavior.quack()
    }
    
    func swim() {
        print("수영을 합니다.")
    }
    
    func display() {
        print("오리 종류별로 이미지를 표시합니다.")
    }
}
    
```
    
```swift
protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("저는 날 수 있어요.")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("저는 날 수 없어요.")
    }
}

class FlyRocketPowered: FlyBehavior {
    func fly() {
        print("저는 모형오리라 로켓파워로 날아갑니다.")
    }
}
 

protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("꽥꽥")
    }
}

//고무오리 우는소리
class Squack: QuackBehavior {
    func quack() {
        print("삑삑")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("저는 소리를 낼 수 없어요.")
    }
}

```
    
```swift
//청둥오리 또는 물오리
class MallardDuck: Duck {
    
    init() {
        super.init(
            flyBehavior: FlyWithWings(),
            quackBehavior: Quack()
        )
    }
    
    override func display() {
        print("저는 청둥오리 입니다.")
    }

}
    
class ModelDuck: Duck {
    
    init() {
        super.init(
            flyBehavior: FlyNoWay(),
            quackBehavior: Quack()
        )
    }
    
    override func display() {
        print("저는 모형오리 입니다.")
    }
    
}
    
```
    
```swift
var mallardDuck = MallardDuck()
mallardDuck.performFly() //저는 날 수 있어요.
mallardDuck.performQuack() //꽥꽥

var modelDuck = ModelDuck()
modelDuck.performFly() //저는 날 수 없어요.
modelDuck.setFlyBehavior(FlyRocketPowered())
modelDuck.performFly() //저는 모형오리라 로켓파워로 날아갑니다.

```
  </p>
</details>









<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift

```
  </p>
</details>

## (옵저버 패턴)
- 
## (데코레이터 패턴)
- 
## (팩토리 패턴)
- 
## (싱글턴 패턴)
- 
## (커맨드 패턴)
- 
## (어댑터, 퍼사드 패턴)
- 
## (템플릿 메소드 패턴)
- 
## (반복자, 컴포지트 패턴)
- 
## (상태 패턴)
- 
## (프록시 패턴)
- 
## (복합 패턴)
- 

## 브리지, 빌더, 책임 연쇄, 플라이웨이트, 인터프리터, 중재자, 메멘토, 프로토타입, 비지터 패턴
