import 'dart:math';

void ifExample() {
  if (getBoolean()) {
    print("true 결과를 돌려 받음");
  }
}

void ifElseExample() {
  if (getBoolean()) {
    print("true 결과를 돌려 받음");
  } else {
    print("false 결과를 돌려 받음");
  }
}

void ifElseIfElseExample() {
  var a = Random().nextInt(10);

  if (a > 3) {
    print("a가 3보다 큽니다.");
  } else if (a > 6) {
    print("a가 6보다 큽니다.");
  } else {
    print("a가 3보다 같거나 작습니다.");
  }

  //성적
  if (a > 90) {
    print("a");
  } else if (a > 80) {
    print("b");
  }

  // 잘못된 성적 출력
  if (a > 80) {
    print("b");
  } else if (a > 90) {
    print("a");
  }
}

void switchExample() {
  var randomNumber = Random().nextInt(5);

  // 만약 break; 문이 빠지면 에러가 발생
  switch (randomNumber) {
    case 0:
      print("0 입니다.");
      break;
    case 1:
      print("1 입니다.");
      break;
    case 2:
      print("2 입니다.");
      break;
    case 3:
      print("3 입니다.");
      break;
    case 4:
      print("4 입니다.");
      break;
  }
}

bool getBoolean() {
  var a = Random();
  int b = a.nextInt(10);

  if (b >= 5) {
    return true;
  } else {
    return false;
  }
}

void main() {
  switchExample();
}
