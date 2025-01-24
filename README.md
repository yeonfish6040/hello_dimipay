# hello_dimipay
디미페이에서 일하기(?) 위하여 플러터를 공부하기 위해 처음으로 빌드하는 플러터 앱 입니다.

## About
저만의 디미페이 키오스크를 구현하여놓은 앱입니다. 혹시 몰라? 좋아보이면 특정 부분에서는 채택해주실지.

## Build environment
Flutter: 3.27.2 - stable\
Dart: 3.6.1\
Xcode: 16.2 (16C5032a)\
Android SDK: Version 29\
Java:  Zulu 8

## Researches
1. flutter는 web, ios, macos, android, linux, windows 빌드가 다 된다! ~~쓸대없어~~
2. UI는 대부분 Widget이라는 것으로 구성된다. 모든 Widget은 Element를 가지는데, 이 부분은 나중에 심도있게 다루어봐야겠다. *
3. 상태관리 기능이 있다. 뻘짓 안해도 된다! 약간 React랑 비슷한 느낌으로 State가 바뀌면 해당 위젯을 다시 렌더한다.
   1. 이건 좀 별로일지도... 차라리 네이티브처럼 view 단위로 하는게 더 리소스 적게 들 듯. 아니면 위젯을 view 처럼 잘게 쪼개놓아야 하나?
4. Stateless Widget은 상태를 가지지 않는다. 반대로 Stateful Widget은 상태를 가진다. 
   1. 앞서 서술했듯이, Stateful Widget은 상태가 변경되면 다시 렌더된다.
   2. 그런데 여기서 재미있는 점이, Stateful Widget 안에 Stateless Widget이 있을때, 상태가 변경되면 해당 \ 
    상태값이 Stateful Widget 밑에 있는 Stateless Widget에 영향을 주지 않는다면 기존에 Stateless Widget 인스턴스를 재활용하고, \
    영향이 있다면 다시 렌더한다.
   3. 반대의 경우, 안쪽의 Stateful Widget만 다시 렌더된다. 근데 해당 값이 부모의 값에 영향을 받으면 부모까지 다시 렌더한다.
   4. 그러니까 Stateless Stateful 남발해야징
4. 약간 UI가 Flex로만 설계되는 감이 있다. 그냥 내가 그러는걸지도.
5. 라우터를 내가 만들어야한다.
   1. "안드로이드의 Intent가 그리운 나"
6. SingleChildScrollView를 사용할때는 Constrained Box를 이용하여 full height를 만들어 줄 수 있다!
