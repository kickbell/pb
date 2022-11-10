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
- 메모리에 저장된 명령어를 읽고, 읽은 명령어를 해석하고, 실행하는 부품
- CPU 핵심 부품 4가지 
	- ALU(산술논리연산장치) : 그냥 계산기.
    - 레지스터 : CPU 내부의 작은 저장장치, 여러개가 있음. 
    - 제어장치 : 제어신호(메모리 읽어, 메모리에 저장해 같은)라는 전기 신호를 내보낸다. 또 명령어도 해석한다. 
- CPU가 일하는 법
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


## 0과 1로 문자를 표현하는 방법 
![](https://velog.velcdn.com/images/dev_kickbell/post/6d136c28-e2da-48ee-aaa4-51f4d7b2b91f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/1b81ff45-c305-4386-80b4-ee8cd4757e7d/image.png)

### 아스키코드
- 7비트니까 2^7 = 128 개쯤 표현 가능 
- 한글 포함 중국어, 일어 등 표현 불가
![](https://velog.velcdn.com/images/dev_kickbell/post/5d191d1c-ab7c-4d22-95d2-d4f3c5e6ca05/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/7f931d44-b324-4545-a4cd-65ad888fd499/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/78152151-b899-4af3-baeb-9795f7900919/image.png)

 
### 그래서 생긴게 언어별 인코딩 방식 
- 한글 기준 2가지 방식
	- 완성형 인코딩
    	- '강'이라는 완전한 단어에 코드를 부여하는 방식 
    - 조합형 인코딩
    	- ㄱ, ㅏ, o에 각각 코드를 부여하는 방식 


![](https://velog.velcdn.com/images/dev_kickbell/post/016ef361-26ff-4df7-804e-0b2bc7c09d95/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/1d7805b6-1f7b-46cf-a157-48f6d55db44d/image.png)


### EUC-KR(한글 인코딩 방식)
![](https://velog.velcdn.com/images/dev_kickbell/post/19340ed6-3286-4ca2-b5da-db849fe522de/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f96a846f-ca40-474d-bac1-12118e6a64b0/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/491d4e19-9a99-46be-8edf-bd2b72fd7c02/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/9c489030-28b6-4dfe-9226-9186c4d0c4ea/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ab8dd11d-d5ad-4d3c-af00-2d452d5d00c6/image.png)

### 문제가 많다. 그래서 필요해진게 모든언어, 특수문자까지 포함된 집합과 인코딩 방식이 있다면 ?? 

### 유니코드 문자집합, utf-8 인코딩 
![](https://velog.velcdn.com/images/dev_kickbell/post/13332728-d534-4404-9994-eb80564fbd98/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/63203b98-90e7-4617-a8bf-c7eccbc6a4bf/image.png)

- 이런 16진수를 유니코드 코드포인트 라고 한다. 화살표도 된다.
- 이 16진수를 그대로 인코딩에 쓰는게 아니라, 어떤 방식으로 지지고볶느냐에 따라서 utf-8, 16, 32 라고 정의한다고 한단다. 

### utf-8 인코딩 
- 인코딩 결과가 다르다.
- 코드포인트가 어디속해있느냐에 따라 바이트가 다름.
![](https://velog.velcdn.com/images/dev_kickbell/post/78ea0bd5-dd10-4ca2-ad6d-008be61afacc/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/32dafea4-ec77-40dc-b38d-ae3d867f08ae/image.png)

- 한이라는 글자의 유니코드 문자표는 D55C인데, 얘를 2진수로 표현하면 1101 0101 0101 1100 이다. 그러면 얘는 0800 ~ FFF 사이니까 3바이트 길이가 나올거다. 
- 그리고 얘가 지금 1110XXXX 10XXXXXX 10XXXXXX 라고 나와있는데 저 X자리에 지금 변환한 2진수를 순서대로 넣으면 된다. 
- 위에가 한, 밑에가 글

![](https://velog.velcdn.com/images/dev_kickbell/post/59fd8b7c-604b-40b1-9860-578ad3776667/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/17648b3e-5f8e-48a2-81cc-a04d231b16f8/image.png)

### 링크 
- 여러 인코딩 방식으로 인코딩/디코딩 해보기 https://dencode.com/
- 유니코드 문자집합 https://unicode-table.com/en/blocks/arrows/ 
- utf-8 인코딩으로 2진수 표현하기 https://onlineutf8tools.com/convert-utf8-to-binary

### 개발중에 글자가 깨진다? 
- 인코딩이 호환되지 않는것은 아닌지? 
- 문자집합에 속해있지 않은 문자아닌지? 
- 인코딩 타입이 euc-kr 이라던지? 

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/c5c48e04-8f26-4546-9801-8ecdb58fd6b0/image.png)


## 소스 코드와 명령어 
![](https://velog.velcdn.com/images/dev_kickbell/post/64cee465-0c12-446a-ac2d-7dd2f53243d7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8516c46e-b263-4c99-afe0-438701d0e8cd/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/b04d326e-cab3-4d6c-9eb5-ba554a94bc48/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/0d787bab-0b30-436d-a618-065153b444be/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a6598735-e1e6-476a-b412-8b7b2db864c5/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/107ba87e-37cb-440c-868b-ea704e99c7f3/image.png)

### 컴파일 언어와 인터프리터 언어 
![](https://velog.velcdn.com/images/dev_kickbell/post/c04c9ae2-124a-4fb6-a57d-f732949c7df9/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2ae706f4-78fa-4db1-839b-1fdb03fa670f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/dac1f495-f8cd-4fc6-93ce-a736e5fcd95b/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/44366872-86d9-43ee-b7e0-9602e86b6247/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2667e741-b9aa-407e-bf7a-3c7681fcf894/image.png)

### 마무리
- 고급언어를 저급언어(어셈블리?바이트코드?)로 변환해서 보여주는 사이트 https://godbolt.org/ 
![](https://velog.velcdn.com/images/dev_kickbell/post/913e7076-21bd-40cb-97e4-217431e8464b/image.png)


## 명령어의 구조 

![](https://velog.velcdn.com/images/dev_kickbell/post/9e31bebb-8353-485b-83eb-2bbbad5518d2/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/9e6f4108-6364-496e-88d4-6cb7f846288c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/b60400f9-af1c-45c7-8646-f7729534fd92/image.png)


### 오퍼랜드 

![](https://velog.velcdn.com/images/dev_kickbell/post/fbb14c67-93b6-42bf-9fbb-324b154e4681/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/3f1b85a7-7f74-456b-aacf-4d3ee126382e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/7eb195a5-68af-4450-8b0a-a8f1b1073b80/image.png)

### 연산코드 
- CPU마다 연산코드는 다 다르나 1,2,3,4번은 공통으로 대부분 있다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/561c6fab-d0db-49e2-a063-e5aa5e830502/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/733fdfaa-7e51-423f-b637-499b48237331/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/17394a9f-be61-4f94-97d9-22a64879de31/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/62fc4418-70b7-41ba-b773-7072b8f47fc6/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/bed53b0c-8313-4a1d-8207-188f7f5d7a15/image.png)

### 왜 오퍼랜드에는 데이터가 아니라 주소를 더 많이 저장하나요 ? 
- 오퍼랜드는 0개일수도있고 3개쯤일수도 있다. 
- 오퍼랜드에는 레지스터가 담길수도있다. 
- 근데 데이터도 저장하고 데이터가 있는 주소도 저장하지만, 보통 주소를 저장한다. 왜 ? 
- 오퍼랜드가 3개라고 치면, 오퍼랜드 하나당 표현할 수있는 데이터의 크기가 2^4 밖에 안되기 때문이다. 
- 주소를 저장하게 되면 데이터 크기 하나에 2^16을 온전히 다 쓸 수 있다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/fd3cabf7-5320-4596-8dbd-d3c9dca5c5f5/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/dd253186-1e3e-4761-84a8-f76237c2b396/image.png)


### 명령어 주소 지정 방식 
![](https://velog.velcdn.com/images/dev_kickbell/post/86a5a569-77c7-4388-a12f-91d425429845/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/27ccfed3-911b-49f4-83d8-25c6f4fecebe/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ec9851ba-b6ba-45c8-9f7c-76b2a38ace80/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/d7a7ba5e-57de-43b0-93f1-b6efdb3079cc/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f930feb8-e645-4ae3-9370-f14b5cff33ab/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/d80fd3b2-db95-41b2-bc99-48b29022bac2/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/ecdf46f6-8d2d-41c8-a357-285ea57f76af/image.png)

## C언어의 컴파일 과정 
![](https://velog.velcdn.com/images/dev_kickbell/post/c5922e28-880f-40b7-8fb4-d26047641a9c/image.png)

### 전처리
- C언어를 예로들면 include stdio.h 라는 라이브러리를 갖고 오는 과정. 왜? printf라는 함수를 써야되서. 
- swift 로 치면 import Foundation 같은 느낌인거지. 
- 이렇게 가져오는 것이 바로 전처리의 다양한 작업들 중에 하나라는 것.
![](https://velog.velcdn.com/images/dev_kickbell/post/2df0c543-e8d2-4a31-9f35-0be81304f214/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f9e8bdd9-d609-40ba-a1a5-8f9126112e29/image.png)


### 컴파일 
- 고급언어를 저급언어로 변환하는 작업 
- gcc라는 컴파일러를 통해서 컴파일하면 위에 있는 간단한 코드가 아래와 같이 어셈블리어로 변환된다. (컴파일러별로 어셈블리어 코드가 다르게 나올 수 있다.)
![](https://velog.velcdn.com/images/dev_kickbell/post/405cbe38-1aed-4b19-b3e8-675a6e346ad0/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/632aa33c-4aa5-4442-afe8-1c0611265115/image.png)

### 어셈블
![](https://velog.velcdn.com/images/dev_kickbell/post/0cd487d7-77ed-45c4-9c0f-07a7a5135326/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/b3bfb0ab-2115-4693-9368-f5c7e675d51a/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/bd4348ea-688f-4b97-9f45-ac3fa94756eb/image.png)

### 링킹
- 여러개의 목적코드를 하나의 실행파일로 엮어주는 작업. 
- 무슨말이냐면, 아래 그림처럼 코드를 컴파일해서 목적코드가 2개 나왔다고 치자. 			
				
![](https://velog.velcdn.com/images/dev_kickbell/post/e64d3a88-8f39-4e70-990d-c1be9f10fd03/image.png)

- 근데, main.c를 실행하려고하니 실행이안된다. 왜? main.c에서 helper.c를 사용하고 있기때문이다. 즉, 쟤가 없으니까 실행이 안되는거야. 그래서 main에 helper를 연결(링킹)해야 되는거다. 
- 그 작업. 즉 여러개의 목적코드를 하나로 연결해주는 작업이 링킹이다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/4e8e8d4b-9d7f-405f-8e9a-bd9e1631076b/image.png)


## ALU와 제어장치 

![](https://velog.velcdn.com/images/dev_kickbell/post/dd9155bc-5ad6-4385-bea6-8cf94e2fff33/image.png)

### ALU가 받아들이는 정보 
- 계산하기 위해서는 정보가 필요하겠지 ?
- 일단 레지스터로부터 피연산자 ( 1 + 2 면 1,2 같은애들)을 받아들어야겠고, 제어신호로 부터 얘를 더할지 뺄찌의 제어신호도 받아야 될 거야. 
![](https://velog.velcdn.com/images/dev_kickbell/post/3c5659c4-4e09-40d5-ad77-a90da834746b/image.png)

### ALU가 내보내는 정보 
- 그리고 결과값을 레지스터에 다시 저장해. 결과를 내보내는거지. 
- 왜 메모리에 안해? 레지스터는 CPU내에 있기때문에 훠얼씬 접근속도가 빨라. 그리고 레지스터에 저장한값을 다시 꺼내서 다른연산을 할수도있잖아. 그런면에서도 레지스터가 더 접근속도가 빠르니까 여기에다가 저장하는거지. 
- 또내보내는게 플래그가 있는데. 0과 1의 데이터를 표현하는 방법에서 이진수를 2의보수로 음수로 전환하면 1010(2) 같은식으로 똑같아서 구분을 어떻게 하냐? 그랬잖아. 그래서 그 정보를 플래그에 저장한다고 했고. 
- 그게 저기있는 플래그다. 양수/음수여부. 0인지여부. 오버플로우 여부 등 여러 부가 정보가 담겨. 
![](https://velog.velcdn.com/images/dev_kickbell/post/498c1e5a-2188-4221-8f25-ead0bc4a6652/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f1f94d20-cbe6-42e2-8f46-3159b1c266ed/image.png)


### 제어장치(받아들이는 정보)
![](https://velog.velcdn.com/images/dev_kickbell/post/270dd96d-0d44-46ff-91c8-fc22c810b785/image.png)


1. 클럭 
	- 클럭은 영어로 시계지? 얘는 똑딱똑딱처럼 일정 주기가 있대.
    - 그리고 이 주기에 맞춰서 메모리에서 명령어를 가져온다든지 한다고 한다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/f491b7c9-b61f-4151-b83e-022bf334d41d/image.png)

2. 명령어 레지스터
	- 명령어를 갖고 있는 레지스터다. 
    - 제어장치에서는 명령어를 갖고있는 특수한 레지스터인 명령어 레지스터로부터 명령어를 받고 그것을 해석해서. 제어신호를 내보낸다. 라고 보면 되겠다 .
![](https://velog.velcdn.com/images/dev_kickbell/post/74dcc0ea-10b6-4919-b1c2-477b26b2c715/image.png)


3. 플래그
	- 제어장치가 명령어를 해석하는데. 부가정보가 필요할 수 있다. 
    - 당연히 플래그가  갖고있는 부가정보가 필요할거다. 
    - 그래서 플래그로부터 그것을 받아들여서 같이 명령어를 해석한다.
    
4. 제어신호
	- CPU말고 다른 입출력장치에서도 제어신호를 보낼 수 있다. 그것을 받아들인다. 
    
    
### 제어장치(내보내는 정보)
- CPU 내부에 전달하는 제어신호가 있고 외부에 전달하는 제어신호가 있다. 
- CPU 내부에 전달하는 제어신호
	- to 레지스터 : 어떤 레지스터간 정보를 이동해라. 어떤 레지스터를 저장해라. 같은것들. 
    - to ALU : 수행할 연산지시. 어떤 데이터를 연산해라 
- CPU 외부에 전달하는 제어신호
	- to 메모리 : 메모리를 읽어라. 메모리를 써라. 
    - to 입출력장치 : 입출력장치를 읽어라. 입출력장치를 써라. 입출력장치를 테스트해라. 같은것들. 
![](https://velog.velcdn.com/images/dev_kickbell/post/93116add-75b2-440a-a420-44649bef2b70/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/e8eccb12-685e-47d6-ad77-8172b95ec0b4/image.png)


## 레지스터
- CPU종류마다 레지스터는 다름.
- 아래는 공통적으로 알아야할 필수 레지스터 모음. 

![](https://velog.velcdn.com/images/dev_kickbell/post/10d3130a-eaaf-44c4-8a20-ce259a58ec30/image.png)

### 이해가 잘 안가니까 그림으로 ! 1 ~ 4번

1. 메모리에 이런식으로 명령어들이 있다. xx번지는 메모리의 주소.
![](https://velog.velcdn.com/images/dev_kickbell/post/bdf722fe-f32a-4645-ab23-6774a5bd15c2/image.png)

2. 다음으로 실행할(메모리에서 가져올) 명령어의 주소가 저장되야 하니까 프로그램 카운터에는 메모리의 주소인 1000번지가 저장된다. "다음으로는 1000번지에 있는 1101을 실행할거야 !"
![](https://velog.velcdn.com/images/dev_kickbell/post/40ff561c-3d07-4b72-b4cd-7ef17afa3fdd/image.png)

3.  그래 "다음으로는 1000번지에 있는 1101을 실행할거야 !" 라는 건 알겠다. 그럼 그 다음작업을 하기 위해선 저 1101을 가져와야 뭘 하든 말든 할거 잖아. 그치? 그러면 일단 메모리 주소 레지스터에 메모리의 1000번지수 라는 애를 저장시켜. 
![](https://velog.velcdn.com/images/dev_kickbell/post/95def918-b8bc-4916-a908-b15bc5cf8e12/image.png)

4. 다음으로 메모리주소 레지스터는 제어신호(메모리읽기)와 함께 주소 버스를 통해 몇번지 주소를 읽고 싶은지를 쏴준다. 그러면 메모리에서 1101 이라는 명령어가 메모리 버퍼 레지스터에 전달되고 프로그램 카운터는 1 이 증가한다. 왜? 다음으로 실행할 번지 (1001번지) 를 실행해야 되니까. 

![](https://velog.velcdn.com/images/dev_kickbell/post/019f83ec-fab5-43b5-b386-819ab8a1b954/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/0ddb54e1-7ae6-41e1-b9f7-71b958fcc3c8/image.png)


5. 그리고 이제 메모리 버퍼 레지스터에 담긴애를 제어장치에서 해석해야 되니까. 걔를 명령어 레지스터로 넘긴다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/8b347639-e404-4e8a-810e-671ca35e881c/image.png)

### 프로그램 카운터가 1이 증가하는 것은 프로그램을 순차적으로 실행할 수 있는 원리! 

![](https://velog.velcdn.com/images/dev_kickbell/post/ef9093e0-c0b2-4c11-80a5-26e3c450a05c/image.png)


### 매번 순차적으로 실행되는 것은 아니다. 
- 점프 같이 특정 메모리주소로 이동해라는 명령어가 들어오면 건너뛴다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/99e48fd0-f2cf-40dd-99d9-9857fd892248/image.png)


### 이해가 잘 안가니까 그림으로 ! 5 ~ 8번

![](https://velog.velcdn.com/images/dev_kickbell/post/7b691765-bd56-47c0-8f68-c1239de7842c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2ce05ed0-00ff-413a-a46d-bcf6268ad910/image.png)


1. 플래그 레지스터랑 범용레지스터는 저 설명대로다. 그냥 넘어가도 될듯. 


2. 주소 지정에 사용되는 레지스터는 스택포인터와 베이스 레지스터가 있다. 

3. 스택 포인터
- 그니까 메모리안에 특정 주소를 지정하는 방식 중에 하나가 스택 포인터야. 
- 그리고 스택은 메모리 안에 있다. 정확히는 스택처럼 사용할 수 있는 스택 구역? 이있대. 그래서 이제 메모리에 쏴주면. 메모리에 스택처럼 사용하는 그런 공간이 있는데, pop을 하면 "응 나 어디까지 차있어" 이렇게 이야기를 해주겠지? 
- 그렇게 주소를 찾는? 지정하는 레지스터 인가봐. 

![](https://velog.velcdn.com/images/dev_kickbell/post/a188b725-ad9f-499a-aca2-183294f09a3e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/bb47d0a7-6665-4928-9218-8644b462d1c1/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2a7802a7-77e3-4aac-b45e-9dfd3e555ddd/image.png)


4. 베이스 레지스터 
- 변위주소 지정방식 이라는 걸 사용해서 주소를 지정하는거야. 어려운 말 아니고 그냥 기준점이나 프로그램 카운터 레지스터의 값에 변위(+,-)를 해서 주소가 어디인지를 지정한다는 거인듯.
	1. 오퍼랜드를 변위로 삼는다. 
    2. 특정 레지스터에 있는 값을 더해서 
    3. 1+2로 해서 유효주소(실제 데이터가 젖아된 메모리의 실제주소)를 얻는다. 
- 변위주소지정방식에도 2가지가 있는데 상대주소지정방식과 베이스 레지스터 주소 지정방식이야.
- 상대주소 지정방식은 아래와 같아. 프로그램 카운터 + 3 을 지정할게 라는 뜻. 
![](https://velog.velcdn.com/images/dev_kickbell/post/9bc6cd1c-c6b3-4eb2-a88b-f3b7e83aa1be/image.png)

- 베이스 주소 지정 방식은 비슷해. 프로그램 카운터부분이 베이스 레지스터로 바뀐것 뿐. 베이스 레지스터가 기준주소가 되는 것이지. 
![](https://velog.velcdn.com/images/dev_kickbell/post/1a4f7d14-2cdb-4010-88be-9e085a70d89a/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/8952ae27-f209-4721-b6ed-1ddf0b47378f/image.png)


## 명령어 싸이클과 인터럽트(중요)
## 
## 
## 운영체제를 알아야 하는 이유 
### 운영체제란 
- 실행할 프로그램에 자원을 할당하고, 프로그램이 올바르게 실행되도록 돕는 프로그램. 
- 프로그램을 위한 프로그램 
- 응용 프로그램들이 자원(CPU, SSD) 같은 것들에 직접적으로 접근하면 문제가 생김. 일종의 데이터를 덮어쓰기 한다던지 삭제한다던지.. 등등.. 
- 운영체제는 일종의 문지기 역할. 하드웨어와 응용프로그램 사이에서 누가 먼저 실행될것인지, CPU를 써야하는데 두명이 CPU를 호출하면 누가 먼저 CPU를 쓰고, 얼마나 쓸것인지 뭐 이런것들을 관리해주는 녀석이다. 
- 정부에 비유할수 있다. 운영체제 에서도 각 관리하는 분야가 다름. 

![](https://velog.velcdn.com/images/dev_kickbell/post/15116926-fc94-49c2-a897-918f7ce4b556/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/cdc4df2a-44a1-40b1-9c36-9a3b2290dcf6/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8ce21074-3157-48ac-a4c2-e5dce2b3c42f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a7f5c902-44ff-42db-a65c-318d0cf55129/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/657b62c6-d9a8-4cff-8b47-b963f885a8b2/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f927cee4-c44c-4a1f-abf2-6ba29bc5b57c/image.png)

### 운영체제를 알아야 하는 이유 
- 개발자는 결국 응용 프로그램을 만든다. 그리고 그것은 결국 하드웨어를 실행한다. 
- 그 하드웨어를 관리하는게 운영체제이고, 운영체제를 깊이 이해한다면 운영체제 또한 프로그램이므로 개발하면서 생기는 문제를 해결하는 능력을 기를 수 있다 .
![](https://velog.velcdn.com/images/dev_kickbell/post/f2141847-482a-438c-9fb9-0388d21ec7c8/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8d533eb2-8604-48c3-9f67-0967f44671f4/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/1eb4197f-37d6-4ed8-887d-ac00b3b040c4/image.png)

## 운영체제의 큰 그림 
### 운영체제의 심장, 커널 
- 스마트폰의 핵심 서비스가 전화, 문자, 인터넷 연결이듯 운영체제에도 자원에 접근하고 조작, 프로그램이 올바르고 안전하게 실행되도록 하는 핵심서비스가 있다. 
- 이런 핵심 부분을 담당하는 녀석이 커널이다. 
- 사람의 심장, 자동차의 엔진과도 같다. 
- 커널이 아닌부분도 있는데 UI 같은 것들이다. 운영체제가 제공하는 UI는 GUI(그래픽 유저 인터페이스) 같은 거나 또는 터미널을 이용하는 CLU(커맨드 라인 인터페이스)같은 것들이다.
- UI는 그저 사용자와 상호작용하기 위한 통로일뿐 커널에 속한 핵심기능은 아니다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/abff06d3-27d9-4bc2-94a0-7fdd7608fa73/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2f25dab1-b518-4c44-89a0-548a83f05c77/image.png)

### 운영체제는 문지기, 작업을 대신 수행 
- 응용프로그램이 실행과정에서 하드디스크에 접근하여 데이터를 저장하려면 운영체제에 도움을 요청한다. 그러면 운영체제는 커널 영역 내의 하드 디스크에 데이터를 저장하는 코드를 실행해서 응용프로그램의 작업을 대신 수행한다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/9a807575-1a6c-426d-bc7e-c8ffdd7b0786/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/099b545a-d806-4ec7-bd36-76795b47b07e/image.png)

### 이중모드 
- 이중모드란, CPU가 명령어를 실행하는 모드를 사용자 모드와 커널 모드로 구분하는 방식이다. 
- 사용자 모드는 하드웨어 자원에 접근하는 명령어를 실행할 수 없는 모드이다. 즉, 커널 영역의 코드를 실행할 수 없는 모드 
- 커널 모드는 반대다. CPU가 커널 모드로 명령어를 실행하면 하드웨어(자원)에 접근하는 명령어를 비롯한 모든 명령어를 실행할 수 있따. 
![](https://velog.velcdn.com/images/dev_kickbell/post/8d409cdd-d0c8-48cb-89ec-bdf0aa86bf6e/image.png)

### 시스템호출 
- 시스템호출이란, 사용자 모드로 실행되는 프로그램이 하드웨어(자원)에 접근하는 서비스를 제공받으려면 운영체제 요청을 보내 커널 모드로 전환해야 한다. 
- 그떄, 이 요청을 시스템호출 이라고 한다. 시스템 호출을 통해 커널 모드로 전환하면 하드웨어에 접근하는 서비스를 제공받을 수 있다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/504d1e83-6249-489e-9a1e-611173f592e6/image.png)

- 이거 약간 그런 느낌이지 싶다. 
- 우리가 프로그램들을 사용하다가 권한이 필요한 것들이 있어. 마이크, 개인정보, 앨범 같은 것들 말이다. 이것도 일종의 하드디스크에 접근하는걸거야. 그러면 아래 사진처럼 시스템 호출을 해서 커널영역에서 하드웨어에 접근하는 코드를 실행하고 다시 복귀해서 권한 얻고 사용하던 프로그램을 계쏙 사용한다던지. 하는 그런느낌인것같다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/d18d47d0-4242-4b56-8bac-417b060c5034/image.png)


### 운영체제의 핵심 서비스 
- 프로세스 관리, 자원접근 및 할당, 파일 시스템 관리 
- 프로세스는 실행중인 프로그램. CPU는 한번에 하나의 프로세스만 실행가능. 아주 빠르게 번갈아가면서 실행한다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/7bdf399c-207e-49e9-9b1f-fd6731c53e6c/image.png)
- 메모리에는 여러 프로세스가 적재되고, 하나의 CPU는 하나의 프로세스만 수행가능하다. 그래서 공정하게 프로세스들에 CPU를 할당해야하는데. (얼마나 오래, 뭐부터 이용하게할건지) 이런걸 CPU 스케쥴링이라고 함. 
- 새로운 프로세스가 적재될 때, 메모리의 어느주소에 적재해야 할지 결정. 

### 가상 머신과 이중모드의 발전
- 요즘 CPU는 이중모드인 커널모드와 사용자 모드 말고도 가상머신 이라는걸 지원함. 
- 가상머신이란 소프트웨어적으로 만들어낸 가상 컴퓨터다. 
- 예를들면,, 패럴릴즈? 맥에서 윈도우를 실행하게 하는 프로그램이나 맥에서 안드로이드 운영체제를 실행할수있게 하는 그런 것들 말이다. 
- 근데 얘네들 또한 응용프로그램이다보니 사용자모드로 동작한다. 그때, 얘네들이 커널모드쪽 서비스를 제공받으려면 어찌할까? 
- 이럴때는 가상머신을 위한 모드인 하이퍼 바이저 모드 라는게 따로 있단다. 이걸 활용함으로써 가상 머신상에서 작동하는 응용프로그램들은 운영체제 서비스를 받을 수 있다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/973c9ea7-28d2-41db-b381-720ceab08e16/image.png)

### 시스템 호출의 종류 
- 리눅스나 유닉스쪽 명령어들. 
![](https://velog.velcdn.com/images/dev_kickbell/post/cbaec55c-cec4-43b9-bf23-1ccd534fc7d9/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/15295ac9-132c-4fb9-84db-78b21fd1d852/image.png)

## 프로세스와 스레드 

### 프로세스 
- 프로그램은 실행전에는 그저 보조기억장치(하드디스크)에 있는 데이터 덩어리일뿐. 근데 실행되서 프로그램을 메모리에 적재하고 실행하는순간 프로세스가 된다. 이걸 프로세스를 생성한다고 함. 
- 사용자가 볼 수 있는 공간에서 실행되는 프로세스를 포그라운드, 반대는 백그라운드 프로세스 라고 함. 
![](https://velog.velcdn.com/images/dev_kickbell/post/1b447346-4ed6-4fe8-ba60-952b33b24c3e/image.png)

### 프로세스 제어 블록 (PCB) 
- 프로세스의 정보를 담고 있는 태그 같은 것임. 
- 운영체제는 여러개의 프로세스를 왔다갔다왔다갔다 하잖음? 그러면 A 프로세스가 1에서 2만큼 실행되고 저장한다음에 다시 B프로세스를 켜고, B가 9->10만큼 실행되고 C프로세스를 켜고 해야할거다. 그럴려면 해당 프로세스가 어디까지 실행됐는지, 메모리에 저장된 위치, 사용한 파일과 입출력장치등.. 각종 정보가 담김. 그걸 PCB라고 함. 
- 맥에서도 프로세스ID(PID)가 있음. 활성 상태 보기라는 프로그램임. 이미지 첨부. 
![](https://velog.velcdn.com/images/dev_kickbell/post/93512e52-71da-4f77-b926-8123d44a528b/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a6bbf964-786b-48cc-a915-70e2b7500446/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/73af77e5-63ea-4305-b302-3e32671c9a11/image.png)


### 문맥교환 
- A프로세스에서 B프로세스로 빠르게빠르게 계속 바꿔줘야 하잖음? 이걸 문맥교환이라고 함. 
- 문맥이란 하나의 프로세스의 수행을 재개하기 위해 기억해야 할 정보를 뜻함. 
- 우리컴퓨터에서는 여러 프로세스가 끊임없이 아주 빠르게 번갈아가며 실행된다. 그래서 우리눈에는 마치 프로세스들이 동시에 실행되는 것처럼 보인다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/b4074983-87a1-4eae-9f15-8c388c9fed62/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/7c0ce44c-64dd-4c50-87d3-cbf564166a16/image.png)

### 프로세스의 메모리 영역 
- 프로세스가 생성되면 커널영역에 PCB가 생성되고, 프로세스가 종료되면 PCB는 삭제됨. 
- 사용자영역에는 코드, 데이터, 힙, 스택 영역으로 나뉘어서 프로세스가 저장됨. 
![](https://velog.velcdn.com/images/dev_kickbell/post/663c066f-d88c-4dba-a7b0-26915137bbd2/image.png)
- 코드 영역: 기계어로 이루어진 명령어 저장. CPU가 실행할 명령어들. 쓰기 금지 읽기만 가능. 아까 말했던 하드웨어에 저장하는 명령어같은 애들이 들어가는 공간. 
- 데이터 영역: 잠깐 쓰고 없앨게 아닌 프로그램이 실행되는 동안 유지될 데이터가 저장되는 공간. 대표적으로 전역변수. 프로그램 전체에서 접근 가능. 
- 코드, 데이터 영역은 크기가 변하지 않음. 프로그램에 포함된 명령어가 갑자기 바뀔리 없고, 데이터 영역은 프로그램이 실행되는 동안에는 계속 유지되기 때문. 그래서 정적할당영역이라고함.
- 반면에, 힙과 스택영역은 실행하면서 그 크기가 변할 수 있음. 동적할당영역이라 부름. 
- 힙 영역: 프로그래머가 직접 할당할 수 있는 저장 공간. 메모리공간을 반환하지 않으면 메모리 누수가 발생. 
- 스택 영역: 데이터를 일시적으로 저장하는 공간. 데이터 영역과는 달리 잠깐 쓰다가 없앨 값들 이 저장되는 공간. 예를들어 함수의 실행이 끝나면 사라지는 지역변수, 매개변수를 말함. 


### 마무리 
- 일시적으로 쓰일 데이터는 스택영역에 PUSH되고, 다쓰면 POP되서 스택영역에서 사라진다. 함수, 지역변수, 매개변수. 
- 힙과 스택영역은 동적할당영역이라 주소가 안겹치게 각각 데이터가 쌓이는 방향이 다름. 
![](https://velog.velcdn.com/images/dev_kickbell/post/b196b724-42ad-4742-a35b-5bc88150861e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/474d11b7-f925-43f7-a578-03e4dbc56b99/image.png)


## 프로세스 상태와 계층 구조 
- 프로세스는 저마다의 상태가 있음. 운영체제는 이 상태를 PCB에 기록해서 관리
![](https://velog.velcdn.com/images/dev_kickbell/post/971623f1-f7a9-44d5-96da-b297c7bc1d9c/image.png)

### 프로세스 상태 
- 생성 상태: 프로세스 생성 중, 메모리 적재, PCB 할당. 
- 준비 상태: 바로 실행할 수 있지만 자기 차례가 아니라서 CPU 할당을 기다리는 상태. 
- 실행 상태: CPU할당받아 실행 중인 상태. 할당 시간 모두 쓰면 다시 준비상태. 실행 도중 입출력장치를 사용해서 입출력 장치 작업이 끝날때까지 기다려야 된다면 대기상태임.(예를들어 프린터 같은것들?.. 출력 요청은 보내서 완료끝났는데 프린터가 아직 동작중인거지.) 
- 대기 상태: 입출력장치를 사용하는 경우 CPU에 비해 처리속도가 느림.(멀잖아) 입출력장치의 작업을 기다리는 상태. 
- 종료 상태: 프로세스가 종료된 상태. 운영체제는 PCB와 메모리 정리함. 
- 디스패치: 준비상태인 프로세스가 실행상태로 전환되는 것. 
- 타이머 인터럽트: 할당시간 다썼다고 알려주는 것. 
- 아래 도표를 프로세스 상태 다이어그램 이라고 함. 
![](https://velog.velcdn.com/images/dev_kickbell/post/7723685c-7e0a-4f2b-a027-e6fd74403a92/image.png)


### 프로세스 계층 구조 
- 프로세스는 실행 도중 시스템 호출해서 다른 프로세스 생성가능.
- 부모프로세스, 자식프로세스 느낌. 
- 컴퓨터 킴 -> 로그인 -> bash셀(사용자인터페이스) -> Vim 문서편집기 실행을 그림으로 나타내면 아래와 같음. 
- 프로세스 계층구조임 
![](https://velog.velcdn.com/images/dev_kickbell/post/2e523978-ce4a-4734-a3d6-156a2d6b4c9f/image.png)


### 프로세스 생성 기법 
![](https://velog.velcdn.com/images/dev_kickbell/post/932cbbed-b47b-48b4-bff7-91e6ce92d30e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/c5007484-d52d-4d9e-b95c-6ea902b25636/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e81959c3-7313-4a24-ab41-fdf1536dd07c/image.png)

### 마무리
![](https://velog.velcdn.com/images/dev_kickbell/post/44c45056-2f53-43aa-94ea-f778709015a7/image.png)


## 스레드 
- 프로세스를 구성하는 실행의 흐름 단위.
- 하나의 프로세스는 여러 개의 스레드를 가질 수 있다. 
- 스레드를 사용하면 하나의 프로세스에서 여러 부분을 동시에 실행할 수 있다. 
- 프로세스 내에서 스레드ID, 프로세스 카운터 값, 레지스터값, 스택을 가진다. 그래서 각기 다른 코드를 실행할 수 있음. 
- 중요한 점은 스레드들은 실행에 필요한 최소한의 정보(스레드ID, 프로세스 카운터 값, 레지스터값)를 유지한채 프로세스의 자원을 공유하며 실행된다. 
- 뭔말이냐면 그니까. 프로세스가 스택, 힙, 데이터, 코드영역 있잖아. 그걸 스레드 별로 각각 갖지 않는다는 것임. 아래 이미지 참고. 				
![](https://velog.velcdn.com/images/dev_kickbell/post/a3c18c19-eeb8-446b-99cd-67fa97f7ba3b/image.png)

### 단일스레드 프로세스
![](https://velog.velcdn.com/images/dev_kickbell/post/1437e74a-00fb-4331-81f9-ae5d13602352/image.png)

### 멀티스레드 프로세스
![](https://velog.velcdn.com/images/dev_kickbell/post/e861c267-fdef-41ae-aebf-b41d2cb0c676/image.png)

### 리눅스는 프로세스와 스레드를 딱히 구분짓지 않는다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/b2616e07-e113-4d26-92dd-c06d0cae7b24/image.png)

### 멀티프로세스와 멀티스레드 
- 여러 프로세스를 통시에 실행하는 것을 멀티 프로세스, 여러 스레드를 프로세스에서 동시에 실행하는 것을 멀티스레드.
- 멀티프로세스와 멀티스레드의 가장 큰 차이는 프로세스끼리는 자원을 공유하지 않지만, 스레드끼리는 같은 프로세스 내의 자원을 공유한다는 것. 
- 이전 챕터에서 프로세스를 fork하면 PID, 메모리주소를 제외하고 복사가 된다고 했잖아? 
- 그래서 fork를 여러번하면 같은 프로세스가 계속 생기는것. 어찌보면 낭비. 
- 근데 스레드는 다른 스레드id, 카운터값, 레지스터값, 스택을 가질뿐 자원은 공유한다. 그래서 메모리 사용에 더 효과적. 그리고 자원을 공유하기때문에 서로 협력과 통신에 유리하다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/732b7bd8-0fd3-449b-b3db-161cffd1bfa4/image.png)



### 단일스레드 프로세스 2개와 1개 프로세스 멀티스레드 
![](https://velog.velcdn.com/images/dev_kickbell/post/ee4a04c5-ffb0-4777-9d38-916913771ca1/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2f02f39c-8e43-4cb1-927e-5aec9e8f491a/image.png)

### 장단점
- 프로세스의 자원을 공유한다는 특성은 때론 단점이 될 수도 있다. 멀티프로세스는 하나의 프로세스가 문제가 생겨도 다른데 지장이 없지만 멀티스레드는 자원을 공유하므로 스레드가 다 고장날 수 있음. 
![](https://velog.velcdn.com/images/dev_kickbell/post/fb8d83f5-d3bb-4f25-8dd7-b5b97e18d0d6/image.png)

### 프로세스 간 통신 
![](https://velog.velcdn.com/images/dev_kickbell/post/138a6b2b-b2c2-45ac-94fc-e1bfb5adda82/image.png)

### copy on write 
- swift가 이렇게 동작한다고 알고있는데? 
![](https://velog.velcdn.com/images/dev_kickbell/post/132e7296-842d-497f-ab48-7bea26b247e1/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/53a89184-f4ce-48e3-bcaf-8cb916f354a0/image.png)

## CPU 스케쥴링 
- CPU의 자원을 배분하는 것은 성능과도 대단히 중요. 효율적으로 배분해야 효과가 잘나옴. 

### 프로세스 우선순위 
- 프로세스는 아래처럼 2종류로 나뉠 수 있다.  
- 입출력 집중 프로세스: 비디오 재생, 디스크 백업 작업 담당 프로세스
- CPU 집중 프로세스: 복잡한 수학연산, 컴파일, 그래픽처리 작업
- 근데, 입출력 집중 프로세스는 실행 상태보다 입출력을 위한 대기 상태에 더 많이 머무른다. 반대로 CPU 집중 프로세스는 대기보다는 실행(연산)하는 상태에 더 많이 머무른다. 
- 그래서 입출력 작업이 많은 프로세스가 우선순위가 더 높다. 왜 ? 얘는 대기에 더 많이 머무르니까 얼른 실행시켜버리고 대기로 둔다음에 남은 시간에 CPU가 실행할 수 있게 해주는게 효율적이라는 것이다. 입출력 집중 프로세스는 어차피 대기상태가 더 길기 때문이다. 
- 그래서 PCB에 우선순위를 명시하고 우선순위를 기준으로 먼저 처리할 프로세스를 결정한다.
![](https://velog.velcdn.com/images/dev_kickbell/post/762fc55f-634a-4b5a-9f71-8690cf5f9510/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/9192113a-e7f0-4729-b68e-c3cb0037c724/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2035a140-d853-4590-8cbd-d0173de5778a/image.png)

### 프로세스 우선순위 직접 확인 
- 맥은 터미널에서 ps -el 명령어를 통해 확인가능. 중간쯤 PRI 라고 있다. priority의 약자.
![](https://velog.velcdn.com/images/dev_kickbell/post/b66188d4-4acf-4a37-90b3-c0f7e62740a8/image.png)

### CPU 버스트와 입출력 버스트 
![](https://velog.velcdn.com/images/dev_kickbell/post/213a271f-2382-412f-8de7-302c6a8a7c3c/image.png)

### 스케쥴링 큐 
- PCB에 우선순위가 있지만, 매번 우선순위를 검색하는 것은 비효율적. 그래서 큐에다가 넣어놓는다고 한다. 
- 우선순위큐가 이용된다고 하는건가? 그건 잘모르겠음 아직은 .

![](https://velog.velcdn.com/images/dev_kickbell/post/c0604d4f-8704-49b6-9fec-3a6a812dc517/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/fa6a3f9a-39ac-4e78-b059-380e545d9b3b/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/19d1152b-71c6-4923-b23b-a85f475f490e/image.png)


### 선점형과 비선점형 스케쥴링 
- 선점형은 급한 요청이 생기면 CPU로부터 자원을 빼앗아 다른 프로세스에 할당할 수 있는 거고, 비 선점형은 아무리 급해도 해당 프로세스가 대기상태에 들어가거나 종료되기 전까진 기다리는 것을 말함. 
- 각각 장단점이 있는데, 선점형은 한 프로세스의 자원독점을 막고 골고루 자원배분할수있어 좋지만, 문맥 교환을 하면서 오버헤드 발생할 수 있다. 
- 비선점형은 문맥교환의 횟수가 적기때문에 오버헤드는 적지만, 급한일이 있어도 무작정 기다리는 수밖에 없다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/151e0002-37ba-44bc-90e0-352998379980/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/c1119bc9-b628-4a51-a621-9ee2a6921594/image.png)

### 마무리
![](https://velog.velcdn.com/images/dev_kickbell/post/945fc9ee-ce04-4a06-b666-2bfd9110e56e/image.png)


## CPU 스케쥴링 알고리즘 

### 선입 선처리 스케쥴링
- 큐에 삽입된 순서대로 작업을 처리하는 방식. 순서대로 처리되기 때문에 뒤에들어오는 애는 실행시간이 고작 2초여도 겁나 기다려야됨. 이런 현상을 호위효과라고함. 
![](https://velog.velcdn.com/images/dev_kickbell/post/27143055-efbd-4e11-9fe1-6926f3dcd2e1/image.png)

### 최단 작업 우선 스케쥴링(SJF 스케쥴링)
- 호위효과를 방지하기 위해 생김. 가장 단순하게 가장 실행시간이 짧은애부터 우선하는 것. 
![](https://velog.velcdn.com/images/dev_kickbell/post/938465ea-1565-4e3b-9d5c-79fb1c038b62/image.png)

### 라운드 로빈 스케쥴링
- 얘는 큐에 삽입된 순서대로 처리하는 기본 베이스에 타이머를 넣은것이다. 
- 즉, 먼저 들어온대로 처리하되 프로세스당 2초만 실행해. 같은 느낌이다. 이때 문맥교환 발생. 
- 여기서 2초가 매우 중요하다. 이걸 타임슬라이스 라고 하는데, 이 크기에 따라 너무 크면 선입 선처리랑 다를게 없고 너무 작으면 문맥교환을 자주해서 비용이 더 커져버린다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/06eed6b1-cf52-4130-ac12-7cdc4b58a2cc/image.png)

### 최소 잔여 시간 우선순위 스케쥴링(SRT 스케쥴링)
- 최단 작업 우선 스케쥴링 + 라운드 로빈 스케쥴링 

### 우선순위 스케쥴링 
- 각 프로세스에 우선순위를 부여하고 가장 높은 우선순위부터 실행. 우선순위가 같으면 선입 선처리. 
- 근본적인 문제는 있다. 우선순위가 낮으면 주구장창 실행이 되지 않을 수 있다. 이걸 기아 현상 이라고 한다. 
- 이걸 방지하기 위한 기법이 에이징 인데, 뭐냐면 오랫동안 대기한 프로세스의 우선순위를 차츰차츰 높이는 거다. 7,8,9... 이런식이면 언젠가 높아져 실행되기 때문. 
![](https://velog.velcdn.com/images/dev_kickbell/post/87cab911-ee18-49b3-8d19-3cb8edb6dead/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/6e5ee676-8718-4929-a838-166f3073e19f/image.png)


### 다단계 큐 스케쥴링
- 얘도 타임슬라이스 지정가능??.. 
- 우선순위 스케쥴링의 발전된 형태. 
- 우선순위 별로 준비 큐를 여러개 사용하는 스케쥴링. 그니까 우선순위 1,2,3,별로 프로세스를 각각 따로 모은다. 

### 다단계 피드백 큐 스케쥴링
- 다단계 큐 스케쥴링의 발전된 형태 
- 다단계 큐 스케쥴링에서는 프로세스들이 큐 사이를 이동할 수 없는 단점이 있다. 그러면 우선순위가 낮은애는 계속 밀린다. 또 기아현상 발생. 
- 해결책은 새로 준비상태가 된 프로세스가 있으면, 우선 우선순위가 제일 높은쪽에 삽입되고 실행되게 해. 
- 그리고 안끝나면 우선순위를 1내린다. 타임슬라이스 동안 또 실행되겠지? 또안끝나? 그럼 또 내려. 그런식으로 하는 건가보다. 
- 복잡하지만 가장 일반적으로 사용되는 CPU 스케쥴링 알고리즘 

![](https://velog.velcdn.com/images/dev_kickbell/post/f1583ca7-6f39-4c97-8bd7-4c42a4c1cd92/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/f9671bb2-4edc-4c98-8a00-a4087321eecf/image.png)


## 동기화 
### 동기화 1 - 실행 순서 제어
- 프로세스를 올바른 순서대로 실행하기 
- book.txt라는 파일이있는데, 읽기 프로세스가 있고 쓰기 프로세스가있다. 근데 이건 쓰기(저장)이 끝나야 읽을 수 있는거라서 꼭 순서대로 실행되어야 한다. 저장이 안된걸 읽어올순없잖음? 
- 또는 로그인-프로필조회 인데. 로그인이 안됐는데 프로필조회를 할수없는 것과 다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/c1ac11a5-650d-4200-ba9f-2f795692f8bc/image.png)


### 동기화 2 - 상호배제
- 동시에 접근해서는 안되는 자원에 대해 하나의 프로세스만 접근하게 하기 
- 프로세스가 2개있다. 똑같이 잔액읽고, n만원을 더해서 저장하는 프로세스다. n만 다르다.
- 근데, 동기화가 이루어지지 않으면 17만원이라는 올바른 결과값이 리턴되지 않는다. 
- 첫 프로세스의 값이 저장되기 전에 읽어버려서 12만원이 아닌 10만원을 갖고 오기 때문. 

![](https://velog.velcdn.com/images/dev_kickbell/post/58f49374-fa1a-4fdc-b3c8-8ad51df2e91d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/bf78ca21-74a3-439d-991a-9cd0a14d4350/image.png)


- 또 다른 코드를 통한 예시 
- 아래 코드를 100,000번씩 실행하면 당연히 결과값을 10을 예상한다. 둘다 똑같이 연산했기 때문. 하지만 안그럴수도 있다. 
- 총합 이라는 데이터를 동시에 사용하기 때문이다. 
![](https://velog.velcdn.com/images/dev_kickbell/post/2efca1f9-718e-449a-8bb4-4677b6c11e22/image.png)


### 공유자원과 임계구역 
- 위에서 총합이라는 데이터나 또는 그 위에 잔액 같은 자원을 공유자원이라고 한다. 
- 공유자원은 전역변수, 파일(book.txt), 입출력장치, 보조기억장치(하드디스크)가 될수도있다.
- 그리고, 동시에 실행하면 문제가 발생되는 자원에 접근하는 코드 영역을 임계영역 이라고 한다. 
- 즉, 두 개 이상의 프로세스가 임계영역에 들어가려면 하나는 대기해야 한다. 하나가 마무리되고 나서야 기다렸던 프로세스가 들어가는거다. 
- 그리고 위에 있는 코드처럼, 여러 프로세스가 동시다발적으로 임계구역의 코드를 실행해서 문제가 발생하는 경우가 있따. 그것을 레이스 컨디션 이라고 한다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/14116223-321d-4075-a065-a85fd2ce485b/image.png)

### 레이스 컨디션이 발생하는 이유 
- A프로세스에서 B프로세스로 바꿔주는게 문맥교환인데. A를 실행하는 동안 저장이 안됐는데 B가 실행되면 레이스 컨디션이 발생하는 것이지. 뭐 결론적으로 설명을 아까랑 똑같음. 
![](https://velog.velcdn.com/images/dev_kickbell/post/a7082a1b-c1a9-455c-b086-474a03274f85/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/75ab143a-3e0a-423d-93c1-341a21b07a18/image.png)

### 임계문제 해결을 위한 세가지 원칙 
![](https://velog.velcdn.com/images/dev_kickbell/post/9665763c-1866-462b-9564-ffb4be97ed50/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/69aaa758-ae75-4e2b-a522-c59797614918/image.png)


## 동기화 기법 

### 뮤텍스 락
- 뮤텍스란 한 프로세스의 내부에서 여러 스레드의 임계구역 제어를 위해 사용하는 객체를 그렇게 부른다. 
- 그리고 뮤텍스 락 기법은 탈의실에 옷갈아입으려고 기다리는 걸 예로 들수 있음. 
- 탈의실에 사람이 있는지는 잠금장치를 보면 알수있다. 사용중/ 사용안함 같이. 사용자는 탈의실에 들어가서 탈의실 문을 잠근다. 그리고 다쓰면 열고 나온다. 
- 이걸 코드로 구현하면 이런느낌이다. lock 이라는 전역변수가 있고, acquire(), release() 함수가 있다. 
- lock은 bool값으로 잠금여부를 나타내는 값이고, 
- acquire()는 임계구역이 잠겨있는지를 주기적으로 (0.0001초든?) 확인하고 잠겨있지 않으면, 잠그는 함수다. 즉, 잠겨있지 않다면 탈의실이 열려있는 것이므로 탈의실에 들어가는거지. 
- release()는 현재 탈의실에서 갈아입다가 다갈아입으면 lock을 false로 잠금을 풀고 나오는 작업인것이다. 
- 쉴새없이 잠겨있는지 체크하기 때문에 이런 대기 방식을 바쁜대기라고 한다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/34df7427-ac0d-4853-abf7-0f7e4009af5a/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/59c240fb-625d-4fd2-bb5e-111717c79470/image.png)


### 세마포 
- 세마포(영단어로 수기신호), 철도신호기에서 유래됐다고 한다. 
- 뮤텍스 락과 비슷하지만, 탈의실이 여러개 있다고 가정하는 방식이다. 
- 탈의실이 몇개인지 알려주는 변수 S가 있고, 멈춤메소드 wait()과 진입해도 된다는 메소드 signal()이 있다. 
- 그래서 뮤텍스 락의 acquire()처럼 wait()함수가 체크한다. 들어가도 되는지. 
- 근데 여기서 S가 탈의실이 몇개잖아? 얘가 0보다 크면 고해도 되는거잖아? 그럼 바로 S += 1 해주고 signal()실행한다. 
- 그러다가 S가 3이라고 치면 3개를 실행하면 S가 0이 되서 더 실행하면 안되는거잖음? 
- 그러면 while문에서 걸리는거다. 계속 체크하는거야 뮤텍스 락 처럼. 

![](https://velog.velcdn.com/images/dev_kickbell/post/2628df16-fe79-41e5-87cf-3501ecfc18a0/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/898c4a2c-28de-45d1-8b86-203257c63dd6/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/dad0f0f2-f068-4000-adee-877fa239f85c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/c468849b-2efb-42fb-b8e8-5a72959803c4/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f03a316e-880b-436a-bea4-7540e4cb4605/image.png)


### 세마포(코드개선) 
- 근데 문제가. 계속 확인해야 한다는거다. 무한히 무작정. 이걸 할시간에 CPU는 다른 생산적인 일을 하면 더 좋을거잖아. 그래서 코드를 개선한다. 만약에 S < 0 이면 프로세스를 대기 상태로 만들고, 프로세스와 PCB를 대기 큐에 집어넣는다. 
- 그러다가 다시 작업할때가 되면 대기 큐에서 꺼내다가 준비 상태로 변경하고 준비큐로 올려준다. 

![](https://velog.velcdn.com/images/dev_kickbell/post/b077053f-8b4a-45d6-aad6-5ee37ee6f062/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/0bb622a1-8705-4603-b356-dca0066b90b1/image.png)

### 세마포(프로세스 순서제어) 
![](https://velog.velcdn.com/images/dev_kickbell/post/aeb18608-2adc-49cb-8845-04b1a1f6a988/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/4bc12dbb-a4ad-4bb8-a2c7-a57cbb811065/image.png)

```swift
//swift 도 지원한다. 미리 함수가 만들어져 있다.
//https://stackoverflow.com/questions/49923810/when-to-use-semaphore-instead-of-dispatch-group

let semaphore = DispatchSemaphore(value: 2)

func work() {
    semaphore.wait()
    //code
    semaphore.signal()
}

```

### 모니터 
- 코드 예시 https://github.com/kickbell/self-learning-cs/blob/main/synchronization/syncronization.md
![](https://velog.velcdn.com/images/dev_kickbell/post/39c65d50-299c-486d-830e-146e7350e226/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/dbb3b58c-62f8-49b6-9892-42ae06b976cb/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/aadc60ec-c53f-411e-b4bf-e2b27f540904/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a6a6f9be-9965-43d6-b796-3bfabf9dbd5c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/221c53be-4c2c-4cf6-a73c-fd326ab95805/image.png)


### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/ba0e8170-7ea0-4f11-97d6-1b7fac4c8b81/image.png)


## 교착상태 
- 게임 프로세스가 자원A를 점유한 채 웹 브라우저가 점유하고 있는 자원B가 끝나길 기다리고, 웹 브라우저 프로세스는 자원A를 기다려서 아무것도 못하는 이런 상황을 교착상태라고 함. 

![](https://velog.velcdn.com/images/dev_kickbell/post/cc8dd241-7fed-43c8-8666-86806228d894/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/09238850-a66e-4ac6-ba4f-b2ed013cee4b/image.png)


### 자원할당 그래프 
- 교착상태를 보다 쉽게 표현가능 
- 프로세스는 원, 자원은 사각형
- 자원의 갯수는 점으로 표현 
- 프로세스가 자원을 할당받아 사용중이면 자원 -> 프로세스로 화살표
- 프로세스가 자원을 기다리고 있으면 프로세스 -> 자원으로 화살표 
- 예시 1: A는 하드디스크 사용중, B, C는 CPU 사용중, D는 CPU 기다리는 중
![](https://velog.velcdn.com/images/dev_kickbell/post/b4a68387-d9f0-4d4a-a69a-3983196af656/image.png)
- 예시 2: 
![](https://velog.velcdn.com/images/dev_kickbell/post/b1763e6e-45cc-48ca-b4db-40138c1ff69c/image.png)


### 교착상태를 자원할당 그래프로 표현 
1. 식사하는 철학자 문제 
![](https://velog.velcdn.com/images/dev_kickbell/post/bc6663d6-d393-407e-a4dd-b734763e47ea/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/37fe5f65-29a6-4b2c-a6ab-3e001461ec37/image.png)

2. 다른 예시 
![](https://velog.velcdn.com/images/dev_kickbell/post/118873ab-fb3c-4cf8-b07d-48a303d001ea/image.png)


### 교착 상태 발생의 4가지 조건 
- 상호배제
	- 하나의 프로세스를 여러명이 이용할 수 있었다면 교착상태는 발생하지 않았을 것.
- 점유와 대기 
	- 자원을 할당받은 상태에서 다른 자원을 기다리는 상태를 점유와 대기라고 함
- 비선점 
	- 비선점은 다른 프로세스를 강제로 빼앗을 수 없는 것. 
- 원형 대기 
	- 프로세스들이 원의 형태로 대기하는 것을 원형대기라고함. 
- 이 조건 중 하나라도 만족하지 않으면 교착상태가 발생하지 않지만, 모두 만족하면 교착상태가 발생할 가능성이 생김. 

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/abea5317-9541-4990-ad9a-1f59adfb918f/image.png)

## 교착 상태 해결 방법 

### 예방 
- 위에서 말한 4가지 조건 중 하나를 충족하지 못하게 해서 미리 예방하는 것. 
- 상호 배제 없애기 
	- 모든 자원을 공유하게 하는건데. 이건 안되지않으까? 그럼 상호배제가 왜있음. 예를들어 프린터기 같은 경우 프린터가 중간에 끊기면 출력되다가 다른 걸 출력해야하는건데. 그럼 그거 일일히 사람이 빼다가 다시 꽂아줘야되나.? 암튼뭐... 그런이유로 패스 
- 점유와 대기 없애기 
	- 이론적으로는 해결가능하나, 자원의 효율성이 떨어진다. 점유와 대기 없이 한쪽에 몰아주면 다른 프로세스들은 기다려야해. 
- 비선점 조건 없애기 
	- 자원을 뺏을 수 있기 하기. CPU같은 거는 돼. 근데 프린터같은것 때문에 안돼. 위에서 말햇듯이 한 작업이 끝날때까지 기다려야되는 프린터같은 애들이 있어. 
- 원형 대기 없애기 
	- 모든 자원에 번호를 붙이고 오름차순으로 자원을 할당하게 하기. 
    - 5번 포크를 집었다면 6이상의 포크를 집어야되는것. 
    - 마치 원형 식탁이 아닌 사각형 일자 식탁에서 밥먹는것. 
    - 비교적 현실적인 대안이지만, 컴퓨터 내에 존재하는 수많은 자원에 일일히 번호를 붙이는 건 간단한 작업이 아니고, 번호를 붙이는 방법에 따라 특정자원의 활용율이 떨어질 수 있음. 
![](https://velog.velcdn.com/images/dev_kickbell/post/41189470-3836-4934-a44b-3a5d3cbe8477/image.png)
    
### 회피 
- 회피는 교착상태가 발생하지 않을 정도로만 조심히 자원을 할당하는 것. 
- 안전 순서열이란 교착 상태 없이 안전하게 프로세스들에 자원을 할당할 수 있는 순서를 말함. 
- 안전 상태는 안전 순서열이 존재하는 상태임 
- 불안전 상태는 안전 순서열이 없는 상태임. 
- 예시 1. 안전 순서열이 있는 상태 p2 -> p1 -> p3 
![](https://velog.velcdn.com/images/dev_kickbell/post/c2be312c-53b4-421f-8151-5b03c8e4d62e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/6c97b7fb-4fcd-41d4-8443-a0eee838dbb9/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ea58070c-c221-41dc-bd70-5f31f31edd3e/image.png)

- 예시 2. 불안전 상태 
![](https://velog.velcdn.com/images/dev_kickbell/post/f78db4b9-f9d7-49ff-bf8e-1b79b2abe70e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/214105c6-3bad-493f-b1e4-f1dc9f6e35f9/image.png)


### 검출 및 회복 
- 이때 운영체제는 프로세스가 자원을 요구할때마다 그때그때 모두 할당한다. 대신에 교착 상태 발생 여부를 주기적으로 검사함. 그리고 교착이 생겼다면 회복한다. 

1. 선점을 통한 회복 
	- 교착 상태가 해결될 때까지 한 프로세스씩 자원을 몰아주는 방식. 
    - 다른 프로세스로부터 자원을 뺴앗아 몰아준다. 하나로 몰아서 다른애 작업이 끝날때까지
2. 프로세스 강제 종료를 통한 회복 
	- 가장 단순하면서 확실한 방법 
    - 모두 강제종료시켜버리거나, 교착상태가 없어질떄까지 하나씩 종료할 수 있음. 
    - 그만큼 작업 내역을 잃을 수 있기도하고, 교착 상태가 없어졌는지 확인하는 과정에서 오버헤드 발생가능. 
    
- 타조 알고리즘 
	- 교착 상태를 무시하는 경우도 있다. 타조가 문제에 처했을때 머리를 땅에 묻고 모른체한다는 모습에서 따온 이름이지만, 실제로는 이러헥 행동안한다고함. 
    - 드문 문제니까 그냥 무시?하겠다.  뭐그런느낌인듯. 
    
![](https://velog.velcdn.com/images/dev_kickbell/post/2df4a5b6-6415-44d7-bbde-8a530c1adcfc/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/f1d4f1a1-b867-4519-a6c7-a13dd9f41cfb/image.png)


## 가상메모리 
- 운영체제에서 가장 핵심적인 역할은 프로세스 관리와 메모리 관리임
- 앞에서는 프로세스관리를 알아봤으니 이제는 메모리관리를 알아보자. 

### 연속 메모리 할당 

### 스와핑 
- 메모리에 적재된 프로세스들 중에 현재 실행되지 않는 프로세스를 swap 한느 것. 
- 실제 메모리 크기보다 프로세스가 큰 경우에도 동시 실행 가능 
- 이렇게 쫓겨나는 보조기억장치의 영역을 스왑영역 
- 메모리 -> 스왑영역을 스왑 아웃
- 스왑영역 -> 메모리를 스왑 인 
![](https://velog.velcdn.com/images/dev_kickbell/post/114f9476-7444-4632-a93e-8767d4a48f8f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/0e62ec20-27d3-4869-91a4-d6cac3e77472/image.png)

### 메모리 할당
- 최초 적합 : 최초로 발견한 공간에 프로세스 배치. 검색이 적은게 장점 
![](https://velog.velcdn.com/images/dev_kickbell/post/d3ed1a7e-fd37-4fa9-999b-565bd8a98217/image.png)

- 최적 적합 : 검색을 한바퀴 다 하고나서 가장 효율적인 딱맞는공간에 배치 
![](https://velog.velcdn.com/images/dev_kickbell/post/b2f5c360-8be5-4ad9-bafa-ad3c2fb9f771/image.png)

- 최악 적합 : 검색을 한바퀴 다 하고나서 가장 큰 공간에 배치. 빈공간이 제일 많이 남음. 
![](https://velog.velcdn.com/images/dev_kickbell/post/cbf2da53-4979-4491-93f9-e2eecd3f2d7f/image.png)


### 외부 단편화 
- 그냥 종합적으로 메모리에 빈공간에 있는거라고 이해하면 될듯..? 
![](https://velog.velcdn.com/images/dev_kickbell/post/030ba229-3219-4a3b-a615-92f0fccf5000/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8aa1bd61-a87b-4acb-b2cd-0dddda33395b/image.png)

### 외부 단편화 해결방법 (압축)
- 많은 오버헤드 야기 
- 하던 일 중지해야함. 
![](https://velog.velcdn.com/images/dev_kickbell/post/38cbae3a-4235-4a4f-82d1-efc5d4f38fd0/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/70425598-db4b-43a1-bfb1-8e0d6f847dc6/image.png)

### 스왑영역 체크해보기 
![](https://velog.velcdn.com/images/dev_kickbell/post/9054bcac-a8f5-425c-a0fb-11c911aa56a0/image.png)

## 페이징을 통한 가상 메모리 관리 

### 연속 할당 방식의 문제 2가지 
- 외부 단편화 
- 물리 메모리보다 큰 프로세스는 실행할 수 없다. 

### 그래서 나온것이 가상메모리, 그리고 가상메모리 관리 기법 중에 하나가 페이징이다. 
- 물리 메모리보다 큰 프로세스 실행 가능
- 외부 단편화 해결 

### 페이징이란 
![](https://velog.velcdn.com/images/dev_kickbell/post/7d5284e9-65d8-4861-a444-57f8d3bff87c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/60a35acf-d804-46a2-a877-f20ab73c0b17/image.png)

### 페이징 스와핑
![](https://velog.velcdn.com/images/dev_kickbell/post/7a712f81-df50-47e1-bf62-5290fe89f34a/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/6db0f542-91fc-488d-9473-5e8bdc021ee0/image.png)

### 불연속배치된 프로세스를 찾기위한 페이지 테이블 
![](https://velog.velcdn.com/images/dev_kickbell/post/a91b53f8-5b46-4e56-8130-ef171ec0f6f7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/5f66c653-3ed1-4123-ab61-04f07b594599/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/86566177-8ac9-41e6-927f-c8a4f36c7231/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/36aa91c1-39c6-403c-9354-baf3228ffacb/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e1b66b09-24be-4adc-91cc-a6b122e85280/image.png)

### 페이징에서의 주소 변환 
![](https://velog.velcdn.com/images/dev_kickbell/post/7e3e0dc4-f7f5-4f54-a1ba-a464046d3117/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a8cd5435-9824-4ce6-bdc5-bcbc346afb45/image.png)

### 페이지 테이블 엔트리 
![](https://velog.velcdn.com/images/dev_kickbell/post/2a496df3-749c-4294-8322-ac78696c880f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8404f867-09a5-424a-92d0-c7d64a3a9895/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f7d9f22d-c8ee-4e88-9908-2b711725b9f8/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8933d3ba-bb0c-4ace-bc05-92fa21709e8f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/21ba8c5e-e0ad-439e-a832-76b1480f9b97/image.png)

### 페이징의 이점 - copy on write 
![](https://velog.velcdn.com/images/dev_kickbell/post/a636be74-cf88-4e32-8b08-72029c0959db/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/c13e6153-8179-4e70-9f23-e9f91322d6c7/image.png)

### 계층적 페이징 
![](https://velog.velcdn.com/images/dev_kickbell/post/196fcb6d-743a-4728-9b19-0f85429c6146/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/340c74fa-5465-4722-b159-44ebd94d127d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2fd98ea4-20d7-42bf-aa4f-ea0ab2f0ad47/image.png)


### 페이징의 내부 단편화 
![](https://velog.velcdn.com/images/dev_kickbell/post/6c6e7b8a-d7a9-4b39-84a9-cd1def6d82d7/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/cdb23927-1952-4fb6-bed9-09adc44cd547/image.png)

## 페이지 교체와 프레임 할당 

### 요구 페이징 
![](https://velog.velcdn.com/images/dev_kickbell/post/b6aa72e8-6aa3-4c7c-bcf1-a399e08cdb90/image.png)

### 페이지 교체 알고리즘
- 페이지 폴트가 가장 적게 일으키는게 좋은 알고리즘이다. 
- 해당 페이지가 현재 메모리에 없을 경우(유효비트가 0일경우)가 페이지 폴트 발생이다.
- 해당 페이지가 현재 메모리에 있을 경우(유효비트가 1일경우)가 페이지 히트 발생이다.
![](https://velog.velcdn.com/images/dev_kickbell/post/dfb8efcc-81d2-4464-b7a5-f3cd437938c8/image.png)

### FIFO 페이지 교체 알고리즘 
- 가장 먼저 올라온 페이지부터 내쫓는 방식 
![](https://velog.velcdn.com/images/dev_kickbell/post/84042658-f84b-443c-976b-fc746b7c6901/image.png)

### 2차 기회 페이지 교체 알고리즘
![](https://velog.velcdn.com/images/dev_kickbell/post/eb00c0c3-4539-413a-bf0a-ff0a902b4d07/image.png)

### 최적 페이지 교체 알고리즘 
- 앞으로 가장 사용빈도가 낮을 페이지를 교체하는 알고리즘 
- 실제 구현은 어려움. 앞으로 오랫동안 사용되지 않을 페이지 예측이 어렵기 때문?  
![](https://velog.velcdn.com/images/dev_kickbell/post/c6e57eeb-c43f-45ed-9300-b9f5713f65be/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/422a07b0-acf2-419b-b2c8-e07614fa3651/image.png)

### LRU 페이지 교체 알고리즘 
- 가장 사용빈도가 낮을 애를 예측하긴 어려우니 그 대안으로 가장 사용빈도가 낮았던 애를 교체하는 알고리즘
- 최근에 사용되지 않은 페이지는 앞으로도 사용되지 않을 것을 기반. 
![](https://velog.velcdn.com/images/dev_kickbell/post/9792a56b-c656-43bb-ad24-0efbeeba19b8/image.png)

### 스레싱과 프레임 할당 
- 페이지 폴트가 자주 발생하는 이유는 사용할 수 있는 프레임 수가 적어도 발생함. 
- 스레싱이란 프로세스가 실행되는 시간보다 페이징에 더 많은 시간을 소요해서 성능이 저해되는 것을 말함. 
![](https://velog.velcdn.com/images/dev_kickbell/post/f8cec902-a00d-45ac-8def-fb528c179edd/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f4841560-ebe9-4fe8-aba1-49b83266e004/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/5b4afdb9-ec14-41e0-8a1c-b3b0b3b0c9ff/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/de240dc8-3ab5-4c17-a532-4630c64d8e3c/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/fd1ab554-ae7a-457a-aafb-17be9778ea4d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ccbde41a-bac2-40b0-ae18-4b044605eca3/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/5eb9ce37-e250-4232-bfb6-8c21864b39fb/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/47263051-fa9a-4622-961c-5caec8fb1f8f/image.png)


## 파일시스템

### 파일속성
![](https://velog.velcdn.com/images/dev_kickbell/post/ffb32a60-19e8-4977-9f49-6045f6e9b5f8/image.png)

### 파일유형
![](https://velog.velcdn.com/images/dev_kickbell/post/26db3ff5-52bd-4d66-9ad8-6cd8bbd483bf/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/98f00591-7eb2-4e56-8dde-165ec4d35a84/image.png)


### 파티셔닝, 파티션
![](https://velog.velcdn.com/images/dev_kickbell/post/13ab7ee9-963e-492e-a610-b606d409071e/image.png)

### 포매팅 
![](https://velog.velcdn.com/images/dev_kickbell/post/5625092d-e9ef-4fb0-aa7b-72293a6a76aa/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e51c7ea3-a290-4b81-a713-e872ffeebead/image.png)

### 파일 할당 방법 
![](https://velog.velcdn.com/images/dev_kickbell/post/2d94732a-e14d-4b55-9dc1-f9ea0132d036/image.png)

### 연속 할당 
![](https://velog.velcdn.com/images/dev_kickbell/post/37b35588-9a02-4c52-95c2-08980132283b/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/e2429a35-ef85-413b-9eb8-ebbc9eb1d337/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/f1b31e7f-9962-454d-9cd6-efd9a95ba70c/image.png)

### 연결 할당 
- 링크드 리스트 너낌 
![](https://velog.velcdn.com/images/dev_kickbell/post/071a7316-3518-4988-a77f-ee00d9a6a007/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/8ba631d6-5446-4d10-8511-5356b4c73b14/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/994efaed-1c85-4308-ad5c-a972233497a2/image.png)

### 색인 할당 
![](https://velog.velcdn.com/images/dev_kickbell/post/a34399ea-31c8-4c34-9ee3-f87307cbb1d7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a950ac53-587d-4971-9c32-9a0d0a1479cc/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2bd1c025-01d5-4f75-8510-95fbd37e2e8e/image.png)

### FAT 파일 시스템
- USB, SD카드 등 저용량 저장장치에 사용 
- 연결 할당 단점 보완
- 블록 주소를 파일 할당 테이블에 모아서 관리 
![](https://velog.velcdn.com/images/dev_kickbell/post/192005b7-9e31-4072-8804-d57d24a2001e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/84ff3b0f-be5d-44c3-b77c-38772944d820/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/d5304c8d-8d82-46a5-9036-c0c89d000ce3/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/a24219ed-77f4-4940-8120-b372752a607d/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/aebfd4a4-f62c-4cd5-82f6-df3f0edd3cb7/image.png)


### 유닉스 파일 시스템
- 유닉스 계열 운영체제에서 사용
- 색인 할당 기반 
- 색인 블록을 i-node라고 부름. 
![](https://velog.velcdn.com/images/dev_kickbell/post/cef65151-74bc-4e1d-ae46-3a8b0d0b40de/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/96352885-c9b3-45af-a122-6766c2de6f81/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/09dd2e99-e620-4484-b811-898d9859531f/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/34845b3a-9898-42ae-b426-a2c629d0d2c6/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/55ea4bf1-db58-4632-8478-9c21594a2cf7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/de1ace44-10e5-43cc-a2b5-1b77c11e27d7/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/ec04c563-4fbc-40d2-8655-c3b4f07e644e/image.png)![](https://velog.velcdn.com/images/dev_kickbell/post/2ca678e4-f759-4985-9ba6-54e9f5239938/image.png)

### 마무리 
![](https://velog.velcdn.com/images/dev_kickbell/post/22a573fe-b2f9-40b4-963b-7703621946c3/image.png)

