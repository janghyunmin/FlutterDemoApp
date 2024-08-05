# :wave: Flutter 데모 앱 #토이 프로젝트#3

> ### Flutter 뉴스 검색 데모 앱
  > 시연 영상
> 
<div style="display: flex; justify-content: space-between; width="100%;">
  <video src="https://github.com/user-attachments/assets/c7205bab-5a5a-4b56-a69b-9cc5373c7712" style="width: 100%;"></video>
</div> 


<!-- 뉴스 조회 이미지 -->
<div style="display: flex; justify-content: space-between;">
    <img src="https://github.com/user-attachments/assets/1ef1ef21-1f5d-4809-9e2e-3f777522b75f" style="width: 30%; height: 30%;"/>
    <img src="https://github.com/user-attachments/assets/62f534c1-fc2a-4070-934e-5b3029845f3a" style="width: 30%; height: 30%;"/>
</div>

<br>

- 뉴스 API 활용 
  - https://newsapi.org/v2/top-headlines? <br>
- 뉴스 리스트 출력 <br>
- 뉴스 상세 화면 출력


## 🔧 Stack
- **Flutter Spec** : ![image](https://github.com/user-attachments/assets/2e6a2c26-b1bb-4089-99d9-4796379e902f)
- **Language** : Dart
- **Framework** : Android Studio
- **API** : [https://newsapi.org/v2/top-headlines](https://newsapi.org/v2/top-headlines)
- **DesignPattern** : MVVM

## 시작하게 된 계기
> "기술적 도전에 대한 호기심과 새로운 기술을 배우고 싶다는 욕구로 Flutter를 시작하게 되었습니다. <br>
> Flutter는 최신 기술 트렌드를 반영한 프레임워크로, 이를 통해 개발자로서의 역량을 한층 더 향상시킬 수 있을 것이라 생각했습니다."


> Flutter vs React-Native 비교
> 

| 특성             | Flutter                                     | React Native                                            |
|-----------------|---------------------------------------------|---------------------------------------------------------|
| **개발사**        |     Google                                  |             Facebook ( Meta )                           |
| **언어**          |     Dart          |        TypeScript , React , JavaScript         |
| **UI 구성요소**    |      자체 위젯 라이브러리 (Material, Cupertino         |     네이티브 컴포넌트            |
| **렌더링 엔진**    |       Skia         |         네이티브 컴포넌트        |
| **핫 리로드**    |        지원 ( 코드 변경시 빠르게 UI 업데이트 )        |         지원 ( 코드 변경시 빠르게 UI 업데이트 )        |
| **성능**    |         높은 성능(네이티브 코드와 유사한 성능)       |        비교적 높은 성능 ( 네이티브보다 낮을 수 있음 )         |
| **플러그인/패키지**    |       풍부하지만 React Native 보다 적을 수 있음         |         풍부하고 다양한 패키지와 플러그인        |
| **개발 환경**    |         IDE(VSCode, Android Studio)       |         IDE( VSCode , Atom 등 )      |
| **UI 커스터마이징**    |       완전한 커스터마이징 가능         |        제한된 커스터마이징         |
| **앱 크기**    |        비교적 큰 초기 APK/IPA        |       상대적으로 작은 앱 크기          |
| **업데이트**    |        구글의 업데이트 및 패치 지원        |       Facebook의 업데이트 및 패치 지원          |

<u>이러한 이유로 Dart언어의 궁금함과 React Native와의 성능 차이를 알고싶어 Flutter 데모앱을 만들게 되었습니다.</u>

## :grey_question: 고민한점
- API 통신을 위해 http vs dio 중 무엇이 다르고 어떤것을 사용할것인가?
- 상태관리를 위하여 어떤것을 사용할 것인가?
  > provider <br>
  > GetX <br>
  > BLoC

> <h3>Provier 장,단점 및 사용시 문제점 </h3>
<h4>장점</h4>
- 상태 관리가 간단하고 직관적이며, 학습 난도가 낮습니다.
- 위젯 트리를 통해 데이터가 공유되므로 데이터 공유가 필요하다면 모든 위젯이 쉽게 접근 가능합니다.
- 변경된 데이터만 다시 렌더링 가능하므로 성능 최적화에 도움이 됩니다.
- Flutter 초창기부터 존재한 패키지로, 풍부한 자료와 예제들을 찾아볼 수 있습니다. <br>

<h4>단점</h4>
- 위젯 트리를 통해 상태 관리가 진행되므로, 앱의 규모가 커지거나 중첩적인 사용이 일어난다면 어떤 데이터가 어떤 위젯에서 사용되고 관리되는지 한 눈에 파악하기 어려울 수 있습니다.

## :fire: 트러블슈팅
<h3> 문제: 위젯이 예상대로 렌더링되지 않거나 상태가 올바르게 반영되지 않는 경우가 발생</h3> 
<h3> 해결방법 </h3>

![해결방법 1](https://github.com/user-attachments/assets/adedbd6d-9859-4615-952a-639df4ae874f)
![해결방법 2](https://github.com/user-attachments/assets/4b536486-7b0d-4da3-8d8d-4c766aa442ec)

> 비동기 작업 완료 후 *notifyListeners()* 호출

<br>

## :open_file_folder: 프로젝트 구조

```markdown
src
├── android
├── ios
├── lib
    ├── models
        └── news_article.dart 
    ├── services
        └── news_api.dart
    ├── viewmodels
        ├── news_article_list_view_model.dart
        └── news_article_view_model.dart
    ├── views
        ├── news_detail_screen.dart
        └── news_screen.dart
    ├── widgets
        ├── circle_image.dart
        └── news_grid.dart
    └── main.dart
├── linux
├── macos
├── test
├── web
└── windows
```
