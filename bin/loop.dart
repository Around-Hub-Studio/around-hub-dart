void forExample1() {
  var message = StringBuffer('Around Hub Studio');
  for (var i = 0; i < 5; i++) {
    message.write('!');
    print(message);
  }
}

// closure 예제
void forExample2() {
  var array = [];

  for (var i = 0; i < 5; i++) {
    array.add(() => print(i));
  }

  array.forEach((a) => a());

  print(array);
}

void forExample3() {
  var array = [1, 2, 3, 4, 5];

  for (var i in array) {
    print("$i 출력");
  }

  print('');

  array.forEach((element) {
    print(element);
  });

  print('');

  array.forEach(print);
}

void whileExample1() {
  var number = 1;

  while (number < 5) {
    print(number);
    number++;
  }

  print('');

  do {
    print(number);
    number--;
  } while (number < 5 && number > -5);
}

void breakExample() {
  var number = 1;

  while (true) {
    print(number++);

    if (number > 10) {
      break;
    }
  }

  print('');

  for (int a = number; a > 0; a--) {
    print(a);

    if (a < 5) {
      break;
    }
  }
}

void continueExample() {
  var number = 0;

  while (number < 10) {
    number++;

    if (number % 2 == 0) {
      continue;
    }

    print(number);
  }
}

void mapLoopExample() {
  var map = {1: "around", 2: "hub", 3: "studio"};

  map.forEach((key, value) {
    print("$key에 매핑된 $value");
  });
}

void main() {
  mapLoopExample();
}
