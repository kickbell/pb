# Factory Pattern(팩토리 패턴)
> - asdf
> - asdf

객체생성부분을 따로 빼내는것? 

## 1. 피자가게 만들기 
- 맛있고 장사잘되는 피자가게를 만들려고 합니다. 하지만 문제가 생겼어요. 
- 기존에는 치즈/그리스/페페로니 피자만 있었는데, 잘 안팔리는 그리스 피자를 없애고 조개/야채 피자를 넣으려고 하니 코드를 변경해야만 합니다. 
- 앞으로도 메뉴는 시도때도없이 변할 것인데 그때마다 코드를 바꿔줄 순 없어요. 변하는 부분을 따로 빼서 캡슐화 해야 합니다. 

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
protocol Pizza {
    func prepare()
    func bake()
    func cut()
    func box()
    func getName() -> String
}

extension Pizza {
    func prepare() {
        print(#function)
    }
    
    func bake() {
        print(#function)
    }
    
    func cut() {
        print(#function)
    }
    
    func box() {
        print(#function)
    }
    
    func getName() -> String {
        let str = String(describing: self)
        let name = str.split(separator: ".").last ?? ""
        return String(name)
    }
}
    
class CheesePizza: Pizza {}
class GreekPizza: Pizza {}
class PepperoniPizza: Pizza {}
class ClamPizza: Pizza {}
class VeggiePizza: Pizza {}
    
class PizzaStore {
    func orderPizza(_ type: String) -> Pizza {
        var pizza: Pizza = CheesePizza()
        
        /*
         메뉴 추가/삭제에 따라 변하는 부분
         객체 생성 코드
         */
        if type == "cheese"{ //치즈
            pizza = CheesePizza()
        } else if type == "greek" { //그리스
            pizza = GreekPizza()
        } else if type == "pepperoni" { //페퍼로니
            pizza = PepperoniPizza()
        } else if type == "clam" { //조개
            pizza = ClamPizza()
        } else if type == "veggie" { //야채
            pizza = VeggiePizza()
        }
        
        /*
         변하지 않는 부분
         피자 공통
         */
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza 
    }
}
```
  </p>
</details>


## 2. 간단한 팩토리(Simple Factory)
- 객체 생성을 처리하는 클래스를 팩토리(Factory)라고 부릅니다. 
- 위의 코드에서 변하는 부분을 빼내서 SimplePizzaFactory로 만들고, 앞으로 객체가 필요할 땐 SimplePizzaFactory 에게 객체를 만들어서 리턴해달라고 부탁하면 됩니다. 
- 단순히 객체 생성을 다른 클래스로 넘겨버린 것이지만, 메뉴를 추가/변경할 때 팩토리 클래스 하나만 고칠 수 있고 또 피자주문을 배달로 하는 HomeDeliveryPizza 시스템에도 이 팩토리를 재사용할 수 있습니다. 
- 이런 것을 Simple Factory라고 부릅니다. 패턴은 아닙니다. 그리고 간단한 팩토리 같은 경우 static 메소드도 사용하곤 하는데, 그것은 SimplePizzaFactory.createPizza("cheese") 처럼 인스턴스를 만들지 않기 위해 사용합니다. 다만 이 방법은 서브클래스를 만들어서 객체 생성 메소드의 행동을 변경할 수 없다는 단점은 있지요. 

![](https://velog.velcdn.com/images/dev_kickbell/post/e4dbf005-ad43-4806-8696-283985f44732/image.png)

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift
class SimplePizzaFactory {
    func createPizza(_ type: String) -> Pizza {
        var pizza: Pizza = CheesePizza()
        /*
         메뉴 추가/삭제에 따라 변하는 부분
         객체 생성 코드
         */
        if type == "cheese"{ //치즈
            pizza = CheesePizza()
//        } else if type == "greek" { //그리스
//            pizza = GreekPizza()
        } else if type == "pepperoni" { //페퍼로니
            pizza = PepperoniPizza()
        } else if type == "clam" { //조개
            pizza = ClamPizza()
        } else if type == "veggie" { //야채
            pizza = VeggiePizza()
        }
        
        return pizza
    }
}
    
class PizzaStore {
    var factory: SimplePizzaFactory
    
    init(_ factory: SimplePizzaFactory) {
        self.factory = factory
    }
    
    func orderPizza(_ type: String) -> Pizza {
        var pizza: Pizza
        
        pizza = factory.createPizza(type)
        
        /*
         변하지 않는 부분
         피자 공통
         */
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
```
```swift
let pizzaStore = PizzaStore(SimplePizzaFactory())
let pizza = pizzaStore.orderPizza("veggie")
print(pizza.getName())
//prepare()
//bake()
//cut()
//box()
//VeggiePizza
```
  </p>
</details>

## 3. 



## Reference 
[https://www.hanbit.co.kr/store/books/look.php?p_code=B6113501223](https://www.hanbit.co.kr/store/books/look.php?p_code=B6113501223)

<details>
  <summary><a href="https://github.com/kickbell/pb">스위프트 코드</a></summary>
  <p>

```swift

```
  </p>
</details>
