
## IS-A와 HAS-A란  
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
