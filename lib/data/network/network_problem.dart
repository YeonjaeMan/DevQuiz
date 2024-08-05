import '../../model/problem.dart';

List<Problem> networks = [
  Problem(
    index: 0,
    question: "다음 중 OSI 모델의 계층이 아닌 것은?",
    options: ["데이터 링크 계층", "세션 계층", "응용 계층", "스위치 계층"],
    answer: "스위치 계층",
    solution:
        "스위치 계층이라는 계층은 OSI 모델에 존재하지 않습니다. OSI 모델은 물리, 데이터 링크, 네트워크, 전송, 세션, 표현, 응용 계층으로 구성됩니다.",
  ),
  Problem(
    index: 1,
    question: "다음 중 IP 주소의 최대 비트 수는?",
    options: ["16비트", "32비트", "64비트", "128비트"],
    answer: "32비트",
    solution: "IPv4 주소는 32비트로 구성되어 있으며, 이는 약 42억 개의 주소를 제공합니다.",
  ),
  Problem(
    index: 2,
    question: "다음 중 라우터의 주요 기능은 무엇인가요?",
    options: ["패킷 필터링", "네트워크 주소 변환(NAT)", "데이터 암호화", "파일 전송"],
    answer: "네트워크 주소 변환(NAT)",
    solution:
        "라우터는 패킷을 전송하고, 네트워크 주소 변환(NAT)을 통해 내부 네트워크와 외부 네트워크 간의 주소를 변환하는 기능을 수행합니다.",
  ),
  Problem(
    index: 3,
    question: "다음 중 TCP와 UDP의 차이점으로 옳지 않은 것은?",
    options: [
      "TCP는 연결 지향적이다.",
      "UDP는 비연결형이다.",
      "TCP는 오류 검출을 지원한다.",
      "UDP는 패킷 순서를 보장한다."
    ],
    answer: "UDP는 패킷 순서를 보장한다.",
    solution: "UDP는 비연결형 프로토콜로, 패킷의 순서를 보장하지 않으며, 오류 검출 및 수정 기능이 없습니다.",
  ),
  Problem(
    index: 4,
    question: "다음 중 VLAN의 주된 목적은 무엇인가요?",
    options: ["네트워크 속도 향상", "보안 강화", "서버 가상화", "라우팅 효율성 증가"],
    answer: "보안 강화",
    solution: "VLAN은 네트워크를 논리적으로 분할하여 보안을 강화하고, 트래픽을 격리하는 데 사용됩니다.",
  ),
  Problem(
    index: 5,
    question: "다음 중 네트워크 스위치의 역할은 무엇인가요?",
    options: ["IP 주소 할당", "패킷 포워딩", "방화벽 기능", "DNS 서비스"],
    answer: "패킷 포워딩",
    solution: "네트워크 스위치는 MAC 주소를 기반으로 패킷을 목적지로 포워딩하는 역할을 합니다.",
  ),
  Problem(
    index: 6,
    question: "다음 중 DHCP의 주된 기능은 무엇인가요?",
    options: ["동적 IP 주소 할당", "정적 IP 주소 할당", "네트워크 속도 측정", "패킷 필터링"],
    answer: "동적 IP 주소 할당",
    solution:
        "DHCP(Dynamic Host Configuration Protocol)는 네트워크 장치에 동적으로 IP 주소를 할당하는 프로토콜입니다.",
  ),
  Problem(
    index: 7,
    question: "다음 중 SSL의 주된 목적은 무엇인가요?",
    options: ["데이터 전송 속도 향상", "데이터 암호화", "IP 주소 변경", "패킷 손실 방지"],
    answer: "데이터 암호화",
    solution:
        "SSL(Secure Sockets Layer)은 인터넷에서 데이터 전송을 암호화하여 보안을 강화하는 프로토콜입니다.",
  ),
  Problem(
    index: 8,
    question: "다음 중 네트워크에서 사용되는 프로토콜이 아닌 것은?",
    options: ["HTTP", "FTP", "SMTP", "HTML"],
    answer: "HTML",
    solution: "HTML은 하이퍼텍스트 마크업 언어로, 웹 페이지의 구조를 정의하는 언어이지 네트워크 프로토콜이 아닙니다.",
  ),
  Problem(
    index: 9,
    question: "다음 중 방화벽의 기능으로 적절하지 않은 것은?",
    options: ["트래픽 모니터링", "패킷 필터링", "데이터 복구", "접근 제어"],
    answer: "데이터 복구",
    solution:
        "방화벽은 네트워크 트래픽을 모니터링하고 필터링하며 접근을 제어하는 기능을 수행하지만, 데이터 복구 기능은 없습니다.",
  ),
  Problem(
    index: 10,
    question: "다음 중 WAN과 LAN의 차이점은 무엇인가요?",
    options: [
      "LAN은 지역적으로 제한된 네트워크이다.",
      "WAN은 더 빠른 속도를 제공한다.",
      "LAN은 인터넷에 연결된다.",
      "WAN은 더 많은 장치를 지원한다."
    ],
    answer: "LAN은 지역적으로 제한된 네트워크이다.",
    solution:
        "LAN(Local Area Network)은 한정된 지역 내에서 사용되는 네트워크이며, WAN(Wide Area Network)은 넓은 지역을 커버하는 네트워크입니다.",
  ),
  Problem(
    index: 11,
    question: "다음 중 IPv6의 주소 길이는 몇 비트인가요?",
    options: ["32비트", "64비트", "128비트", "256비트"],
    answer: "128비트",
    solution: "IPv6 주소는 128비트로 구성되어 있으며, 더 많은 주소 공간을 제공합니다.",
  ),
  Problem(
    index: 12,
    question: "다음 중 네트워크의 대역폭을 측정하는 단위는 무엇인가요?",
    options: ["초당 비트", "초당 바이트", "초당 패킷", "초당 프레임"],
    answer: "초당 비트",
    solution: "네트워크의 대역폭은 일반적으로 초당 비트(bps)로 측정됩니다.",
  ),
  Problem(
    index: 13,
    question: "다음 중 NAT(Network Address Translation)의 주요 목적은 무엇인가요?",
    options: ["IP 주소 보안", "트래픽 모니터링", "IP 주소 변환", "데이터 암호화"],
    answer: "IP 주소 변환",
    solution: "NAT는 내부 네트워크의 사설 IP 주소를 공인 IP 주소로 변환하여 인터넷과 통신할 수 있도록 합니다.",
  ),
  Problem(
    index: 14,
    question: "다음 중 스위치와 허브의 차이점은 무엇인가요?",
    options: [
      "스위치는 MAC 주소를 기반으로 패킷을 전송한다.",
      "허브는 데이터를 필터링한다.",
      "스위치는 연결된 장치의 수에 제한이 없다.",
      "허브는 더 높은 속도를 제공한다."
    ],
    answer: "스위치는 MAC 주소를 기반으로 패킷을 전송한다.",
    solution:
        "스위치는 MAC 주소를 기반으로 패킷을 전송하여 더 효율적으로 네트워크를 운영하지만, 허브는 모든 포트로 패킷을 전송합니다.",
  ),
  Problem(
    index: 15,
    question: "다음 중 VPN의 주된 기능은 무엇인가요?",
    options: ["데이터 전송 속도 향상", "보안된 연결 제공", "네트워크 주소 변환", "패킷 손실 방지"],
    answer: "보안된 연결 제공",
    solution:
        "VPN(Virtual Private Network)은 공용 네트워크를 통해 안전하게 연결을 제공하여 데이터의 보안을 강화합니다.",
  ),
  Problem(
    index: 16,
    question: "다음 중 P2P 네트워크의 특징은 무엇인가요?",
    options: [
      "중앙 서버가 필요하다.",
      "각 노드는 동등한 권한을 가진다.",
      "데이터 전송 속도가 느리다.",
      "하나의 장치만 데이터를 전송할 수 있다."
    ],
    answer: "각 노드는 동등한 권한을 가진다.",
    solution:
        "P2P(Peer-to-Peer) 네트워크에서는 각 노드가 동등한 권한을 가지며, 중앙 서버 없이 데이터를 직접 전송합니다.",
  ),
  Problem(
    index: 17,
    question: "다음 중 DNS의 주된 기능은 무엇인가요?",
    options: ["IP 주소를 도메인 이름으로 변환", "데이터 전송 암호화", "네트워크 속도 향상", "패킷 필터링"],
    answer: "IP 주소를 도메인 이름으로 변환",
    solution:
        "DNS(Domain Name System)는 도메인 이름을 IP 주소로 변환하여 사용자가 웹사이트에 접속할 수 있도록 돕는 시스템입니다.",
  ),
  Problem(
    index: 18,
    question: "다음 중 네트워크에서 사용되는 프로토콜 중 하나는 무엇인가요?",
    options: ["HTML", "CSS", "DNS", "XML"],
    answer: "DNS",
    solution:
        "DNS(Domain Name System)는 도메인 이름을 IP 주소로 변환하는 프로토콜로, 네트워크에서 사용됩니다.",
  ),
  Problem(
    index: 19,
    question: "다음 중 QoS(Quality of Service)의 주된 목적은 무엇인가요?",
    options: ["네트워크 속도 향상", "서비스 품질 보장", "IP 주소 할당", "보안 강화"],
    answer: "서비스 품질 보장",
    solution: "QoS는 네트워크 트래픽을 관리하여 특정 애플리케이션이나 서비스의 품질을 보장하는 기술입니다.",
  ),
];
