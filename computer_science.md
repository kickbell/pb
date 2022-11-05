> 1 OS(Operating System)란 무엇일까요?
2 OS의 커널에 대해서 설명해보세요.
3 Linux 의 구성요소를 말씀해보세요.
4 리눅스 보안 설정에서 권장하는 UMASK 022 로 설정하라는 이유는 뭘까요? 5 CPU 스케줄링 방식의 선점과 비선점에 대해서 설명해보세요.
6 Disk 스케줄링에 영향을 끼치는 주요 3가지 요소는? 7 가상 메모리의 관리 정책은 어떤 것들이 있나요?
8 프로세스의 상태 전이에 대해서 설명해보세요.
9 Process와 Thread 를 비교 설명해보세요.
10 교착상태(Deadlock)이 발생하는 원인에 4가지에 대해서 설명해보세요.
11 세마 포어가 무엇인지 설명해보세요.
12 우선순위 역전 현상은 무엇인지 설명해보세요.
13 OS상에서 인터럽트가 발생하고 처리되는 과정을 설명해보세요. 14 Locality는 무엇인지 설명해보세요.
15 Thrashing 은 무엇인지 설명해세요.


## 컴퓨터가 이해하는 정보
![](https://velog.velcdn.com/images/dev_kickbell/post/7d0ded06-15cc-4099-b6d1-c121b0f7886e/image.png)

## 컴퓨터의 4가지 핵심 부품		
	
### CPU			
		
![](https://velog.velcdn.com/images/dev_kickbell/post/c516bf02-a3b7-421e-b817-b3f0ae12aecf/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/eeaa975a-77fc-4e4c-9990-e1f230d98ec0/image.png)
* 메모리에 저장된 명령어를 읽고, 읽은 명령어를 해석하고, 실행하는 부품
* CPU 핵심 부품 4가지 
    - ALU(산술논리연산장치) : 그냥 계산기.
    - 레지스터 : CPU 내부의 작은 저장장치, 여러개가 있음. 
    - 제어장치 : 제어신호(메모리 읽어, 메모리에 저장해 같은)라는 전기 신호를 내보낸다. 또 명령어도 해석한다. 
* CPU가 일하는 법
![](https://velog.velcdn.com/images/dev_kickbell/post/5028e544-4908-43b0-97a9-c6f58e371b37/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/28e21789-b487-4a04-9fd8-76a39862f49f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/68b68086-3e74-4cdf-a402-1bc71090fa37/image.png)



### 주기억장치(메모리)
- RAM과 ROM인데 걍 램만 기억하자
- 현재 실행되는 프로그램(프로세스)의 명령어와 데이터를 저장하는 부품이다. 
- 메모리에 저장된 값의 위치는 주소로 알 수 있다.(배열의 index처럼 빨리빨리 찾아가기 위해서) 
- 주소로 메모리에 저장되어 있는 데이터에 접근할 수 있다. 
- 프로그램이 실행되기 위해서는 반드시 메모리에 저장되어 있어야 한다. 
- 메모리는 현재 실행되는 프로그램의 명령어와 데이터를 저장한다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/9c58c107-b67f-4d7b-a748-696208216614/image.png)
### 보조기억장치(SSD, 하드디스크, USB...)
- 메모리는 실행할 정보를 저장하고(휘발성 메모리), 보조기억장치는 보관할 정보를 저장한다. 
- 메모리보다 크기가 크고 전원이 꺼져도 저장된 내용을 잃지 않는 저장 장치 
- 보조기억장치는 메모리를 보조하는 특별한 입출력 장치라고도 할 수 있다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/604c308e-27ec-4c72-bdbb-9e9e2dcd03a5/image.png)
### 입출력장치(키보드, 마우스, 마이크, 프린터, 스피커...) 
- 컴퓨터 외부에 연결되어 컴퓨터 내부와 정보를 교환하는 장치 
- 그러면, 보조기억장치인 외장하드, USB, CD-ROM도 입출력장치라고 볼 수 있지 않나 ? 
- 사실 애매하기때문에 그냥 합쳐서 주변장치라고 부르기도 한다. 하지만, 차이점은 보조기억장치는 메모리를 보조하는 특별한 입출력 장치다. 라는 점에서 차이가 있다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/8b6afc91-5359-4bd4-9659-2d179ed4e916/image.png)
### 메인보드(마더보드)
- 컴퓨터의 4가지 핵심부품들을 부착(연결)할 수 있는 판떼기
- 메인보드에 연결된 부품은 버스라는 통로를 통해 정보를 주고 받는다. 
- 버스는 컴퓨터의 부품끼리 정보를 주고 받는 일종의 통로이다. 
- 다양한 버스가 있지만, 그 중에서도 가장 중요한 컴퓨터의 핵심 부품 4가지를 연결하는 버스를 시스템 버스라고 한다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/fb56a163-b721-486c-b1df-26fda5031e6f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ff5f7e4c-8166-48ef-b610-45a04c25f8e8/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e4171fcf-8f5d-48c6-a990-0872065209d7/image.png)

### 시스템 버스 
- 주소버스 : 주소를 주고 받는 통로
- 데이터 버스 : 명령어와 데이터를 주고 받는 통로
- 제어 버스 : 제어 신호를 주고 받는 통로 
![](https://velog.velcdn.com/images/dev_kickbell/post/3a51a273-8531-434c-8b9f-7ce008990c89/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/7773ff7c-e202-4a91-bd4b-fc792f61b335/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/f86a6e36-a28e-4230-9287-7932424b85f7/image.png)

## 0과 1로 숫자를 표현하는 방법
### n비트로 2^n가지의 정보 표현 가능
![](https://velog.velcdn.com/images/dev_kickbell/post/0a4442e7-7ec2-4b6a-b262-bb4971cced26/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/32d53093-2725-4615-afb5-9fd039b99369/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/9fa654c0-b01c-43b4-8d4e-fd12be77756c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e7c41bbf-fe5c-46fa-9d46-01671b83dd72/image.png)

### 워드. 요즘 컴퓨터는 보통 64비트. 즉, CPU가 한번에 처리할 수 있는 정보의 크기가 64비트다. 2^6 인가.
![](https://velog.velcdn.com/images/dev_kickbell/post/0a4ba94e-adaf-4132-88be-2c896e11adce/image.png)

### 이진법
![](https://velog.velcdn.com/images/dev_kickbell/post/1925d4da-f0ad-458b-a222-ccd87a4d5f71/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/91090422-12ff-44a4-bf22-35c7a486e07d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/37826eb0-5dc3-4cc3-9c96-e9520350c284/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/10f0fbd6-399a-4528-94c8-eb211591c8c7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8da51c11-5aac-4efe-ba9a-38ab6f8082bc/image.png)

### 2의 보수 표현의 한계 
![](https://velog.velcdn.com/images/dev_kickbell/post/4e984437-1dad-456a-bcb1-d53bf9248baa/image.png)

### 이진수 빼기 
- 1 - 0 은? 1
- 11 - 10 은? 1
- 1011 - 10 은? 1001
- 100 - 11 은 ? 
	1. 011로 자릿수를 맞추고 0과 1를 바꾼다. -> 100 
    2. 100의 결과에 1을 더한다. -> 101 
    3. 100 - 101 을 한다. -> 1001 
    4. 첫째자리는 지운다. (이방법은 항상 첫쨰자리를 지워야 한다.) 
- 101 - 11 은 ? 
	1. 011 -> 100 
    2. 100 -> 101 
    3. 101 - 101 -> 1010
    4. 1010 -> 010 


### 이진법 음수, 양수 구분하기
- 육안으로는 똑같지만, 플래그라는게 있대. 그래서 컴퓨터는 알 수 있음.
![](https://velog.velcdn.com/images/dev_kickbell/post/33a0322b-b4c1-40a8-95f7-44d26187471d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a81cbbe5-165b-4ff5-80ab-b7a874fb8c8b/image.png)
 


### 십육진법
![](https://velog.velcdn.com/images/dev_kickbell/post/e55c04f2-0a32-4711-9988-f47833fa9e44/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/b1af55cc-500a-46fe-bf41-e51dc2bf7c9f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a36c3826-e91e-423c-895e-e1c2c3781518/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/d6d75d03-1050-424f-b5f4-652bd661556b/image.png)


### 왜 십육진법을 쓰나요 ?
- 십진법 있잖아. 익숙한데? 
- 이진수 <-> 십육진수 변환이 엄청 쉽다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/0ef4153e-4150-499f-9ac4-9232abf19fc0/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2449f696-4dc7-4b30-a292-305b7567f7e9/image.png)

### 마무리
![](https://velog.velcdn.com/images/dev_kickbell/post/0522bac8-3f92-4a66-ade3-6a0511f128e6/image.png)


    


## 자료구조 / 알고리즘 기반 문제 손코딩

* 단순히 코딩테스트를 잘하냐를 묻는 것이 아님. ![](https://velog.velcdn.com/images/dev\_kickbell/post/e819152e-5400-4aee-957f-fa2ee35ec950/image.png)![](https://velog.velcdn.com/images/dev\_kickbell/post/09f8d63e-786b-4660-8621-9f5f77a029d5/image.png)![](https://velog.velcdn.com/images/dev\_kickbell/post/0a2673af-736b-4cad-8296-9fbe6a268de5/image.png)

### 손코딩 1 ( 가벼운 문제부터 시작하는 경우 )

* 여기서 원하는 것은 문제를 듣고 아래와 같은 질문을 하냐는 것이다.





## 
## 
## 
## 
## 
## 
