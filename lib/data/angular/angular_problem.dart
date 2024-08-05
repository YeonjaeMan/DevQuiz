import '../../model/problem.dart';

List<Problem> angulars = [
  Problem(
    index: 0,
    question: "Angular의 주요 특징 중 하나는 무엇인가요?",
    options: ["의존성 주입", "DOM 조작", "가상 DOM", "CSS 스타일링"],
    answer: "의존성 주입",
    solution: "Angular는 의존성 주입을 통해 컴포넌트 간의 의존성을 관리하고 재사용성을 높입니다.",
  ),
  Problem(
    index: 1,
    question: "Angular에서 상태(state)를 관리하는 방법은 무엇인가요?",
    options: ["NgRx", "setState()", "useState()", "updateState()"],
    answer: "NgRx",
    solution: "NgRx는 Angular 애플리케이션의 상태 관리를 위한 공식 라이브러리입니다.",
  ),
  Problem(
    index: 2,
    question: "Angular 컴포넌트의 생명주기를 관리하는 메서드는 무엇인가요?",
    options: ["ngOnInit", "ngOnChanges", "ngOnDestroy", "이 모두"],
    answer: "이 모두",
    solution: "이 모든 메서드는 Angular 컴포넌트의 생명주기와 관련된 훅입니다.",
  ),
  Problem(
    index: 3,
    question: "Angular에서 @Input의 용도는 무엇인가요?",
    options: [
      "부모 컴포넌트에서 자식 컴포넌트로 데이터 전달",
      "자식 컴포넌트에서 부모 컴포넌트로 데이터 전달",
      "컴포넌트의 상태를 관리하기 위해",
      "이벤트 핸들링"
    ],
    answer: "부모 컴포넌트에서 자식 컴포넌트로 데이터 전달",
    solution: "@Input은 부모 컴포넌트에서 자식 컴포넌트로 데이터를 전달하는 데 사용됩니다.",
  ),
  Problem(
    index: 4,
    question: "Angular의 reactive forms는 무엇을 위한 것인가요?",
    options: ["양방향 데이터 바인딩", "동적 폼 생성 및 검증", "CSS 스타일링", "라우팅 관리"],
    answer: "동적 폼 생성 및 검증",
    solution: "Reactive forms는 동적 폼을 생성하고 폼 검증을 관리하는 데 사용됩니다.",
  ),
  Problem(
    index: 5,
    question: "Angular에서 서비스의 주 용도는 무엇인가요?",
    options: ["UI 렌더링", "상태 관리", "비즈니스 로직 공유", "폼 검증"],
    answer: "비즈니스 로직 공유",
    solution: "서비스는 애플리케이션의 비즈니스 로직을 공유하고 재사용하기 위해 사용됩니다.",
  ),
  Problem(
    index: 6,
    question: "Angular에서 컴포넌트를 어떻게 정의하나요?",
    options: ["function과 return", "클래스와 @Component 데코레이터", "이 둘 다", "HTML 태그"],
    answer: "클래스와 @Component 데코레이터",
    solution: "Angular 컴포넌트는 클래스를 사용하여 @Component 데코레이터로 정의합니다.",
  ),
  Problem(
    index: 7,
    question: "Angular의 *ngIf 디렉티브는 무엇을 위한 것인가요?",
    options: ["조건부 렌더링", "데이터 바인딩", "루프 렌더링", "이벤트 핸들링"],
    answer: "조건부 렌더링",
    solution: "*ngIf는 특정 조건에 따라 DOM 요소를 렌더링할지 여부를 결정하는 데 사용됩니다.",
  ),
  Problem(
    index: 8,
    question: "Angular의 *ngFor 디렉티브는 무엇을 위한 것인가요?",
    options: ["조건부 렌더링", "루프 렌더링", "이벤트 핸들링", "데이터 바인딩"],
    answer: "루프 렌더링",
    solution: "*ngFor는 배열이나 객체를 반복하여 리스트를 렌더링하는 데 사용됩니다.",
  ),
  Problem(
    index: 9,
    question: "Angular에서 의존성 주입을 사용하는 이유는 무엇인가요?",
    options: ["코드의 재사용성 향상", "성능 최적화", "보안 강화", "비동기 처리"],
    answer: "코드의 재사용성 향상",
    solution: "의존성 주입을 통해 코드의 재사용성을 높이고, 테스트를 용이하게 합니다.",
  ),
  Problem(
    index: 10,
    question: "Angular의 @Output 데코레이터는 무엇을 위한 것인가요?",
    options: [
      "부모 컴포넌트에서 자식 컴포넌트로 데이터 전달",
      "자식 컴포넌트에서 부모 컴포넌트로 이벤트 발행",
      "서비스를 주입하기 위해",
      "상태를 관리하기 위해"
    ],
    answer: "자식 컴포넌트에서 부모 컴포넌트로 이벤트 발행",
    solution: "@Output은 자식 컴포넌트에서 부모 컴포넌트로 이벤트를 발행할 때 사용됩니다.",
  ),
  Problem(
    index: 11,
    question: "Angular의 routerModule의 주 용도는 무엇인가요?",
    options: ["상태 관리", "라우팅 및 내비게이션 처리", "폼 검증", "API 호출"],
    answer: "라우팅 및 내비게이션 처리",
    solution: "routerModule은 Angular 애플리케이션의 라우팅 및 내비게이션을 관리하는 데 사용됩니다.",
  ),
  Problem(
    index: 12,
    question: "Angular에서 Observable의 주 용도는 무엇인가요?",
    options: ["비동기 데이터 처리", "상태 관리", "DOM 조작", "이벤트 핸들링"],
    answer: "비동기 데이터 처리",
    solution: "Observable은 비동기 데이터 스트림을 처리하는 데 사용되며, RxJS 라이브러리를 통해 제공됩니다.",
  ),
  Problem(
    index: 13,
    question: "Angular의 formGroup은 무엇을 위한 것인가요?",
    options: ["폼의 상태 관리", "폼 검증", "이벤트 핸들링", "이 모두"],
    answer: "이 모두",
    solution: "formGroup은 폼의 상태를 관리하고, 검증 및 이벤트 처리에 사용됩니다.",
  ),
  Problem(
    index: 14,
    question: "Angular에서 Pipe의 용도는 무엇인가요?",
    options: ["데이터 변환", "상태 관리", "이벤트 발행", "라우팅 처리"],
    answer: "데이터 변환",
    solution: "Pipe는 템플릿에서 데이터를 변환하여 표시하는 데 사용됩니다.",
  ),
  Problem(
    index: 15,
    question: "Angular의 HTTPClient 모듈은 무엇을 위한 것인가요?",
    options: ["라우팅 처리", "API 호출", "상태 관리", "폼 검증"],
    answer: "API 호출",
    solution: "HTTPClient 모듈은 API 호출을 통해 서버와 통신하는 데 사용됩니다.",
  ),
  Problem(
    index: 16,
    question: "Angular에서 ngModel 디렉티브는 무엇을 위한 것인가요?",
    options: ["양방향 데이터 바인딩", "조건부 렌더링", "루프 렌더링", "이벤트 발행"],
    answer: "양방향 데이터 바인딩",
    solution: "ngModel은 사용자 입력을 모델에 양방향으로 바인딩하는 데 사용됩니다.",
  ),
  Problem(
    index: 17,
    question: "Angular의 service가 아닌 것은 무엇인가요?",
    options: ["컴포넌트", "HTTP 서비스", "라우터 서비스", "폼 서비스"],
    answer: "컴포넌트",
    solution: "서비스는 비즈니스 로직을 처리하는 반면, 컴포넌트는 UI를 구성하는 역할을 합니다.",
  ),
  Problem(
    index: 18,
    question: "Angular의 lifecycle hook 중 'ngOnInit'의 용도는 무엇인가요?",
    options: ["컴포넌트가 생성될 때", "DOM에 삽입될 때", "데이터가 변경될 때", "컴포넌트가 파괴될 때"],
    answer: "컴포넌트가 생성될 때",
    solution: "'ngOnInit' 훅은 컴포넌트가 생성된 후에 초기화 작업을 수행하는 데 사용됩니다.",
  ),
  Problem(
      index: 19,
      question: "Angular에서 lazy loading의 주 용도는 무엇인가요?",
      options: ["성능 최적화", "상태 관리", "폼 검증", "이벤트 핸들링"],
      answer: "성능 최적화",
      solution:
          "Lazy loading은 필요할 때만 모듈을 로드하여 초기 로딩 시간을 줄이고 애플리케이션 성능을 최적화하는 데 사용됩니다."),
];