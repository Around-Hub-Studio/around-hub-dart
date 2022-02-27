import 'dart:async';

void main() {
  printName();
  print('checkpoint');

  Future<int> future = getNumber();

  future.then((value) {
    print("value : $value");
  }).catchError((error) {
    print("error 발생 : $error");
  });

  print('checkpoint2');

  printA();
  printB();
  printC();
}

printName() async {
  String name = await getName();
  print(name);
}

String getName() {
  return 'Around Hub Studio';
}

Future<int> getNumber() {
  return Future<int>.delayed(Duration(seconds: 2), () {
    return 123;
  });
}

void printA() {
  print('a');
}

void printB() async {
  Future.delayed(Duration(seconds: 1), () {
    print('delayed');
  });
  print('b');
}

void printC() {
  print('c');
}
