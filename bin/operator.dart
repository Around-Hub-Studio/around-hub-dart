void arithmeticOperator1() {
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
}

void arithmeticOperator2() {
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}

void comparisonOperator1() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}

void typeTestOperator() {
  var bob = employee();
  bob.firstName = 'bob';

  if (bob is person) {
    print(bob.firstName);
  } else {
    print("bob은 person 클래스를 상속받고 있지 않습니다.");
  }

  if (bob is Object) {
    print(bob.firstName);
  }
}

class person {
  dynamic firstName;
  dynamic lastName;
}

class employee extends person {
  dynamic firstName;
  dynamic lastName;
}

void assignmentOperator() {
  var value = "around";

  var a = "hub";
  var b = "studio";

  a = value;
  //b ??= value;

  print(a);
  print(b);
}

void logicalOperator() {
  if ((1 == 1) && ((1 == 2) || (3 == 3))) {
    print("true");
  }
}

void bitwiseAndShiftOperator() {
  final value = 0x22; // 34
  final bitmask = 0x0f; // 15

  print(value);
  print(bitmask);

  print((value & bitmask)); // AND
  print((value & ~bitmask)); // AND NOT
  print((value | bitmask)); // OR
  print((value ^ bitmask)); // XOR
  print((value << 4)); // Shift left
  print((value >> 4)); // Shift right
  print((value >>> 4)); // Unsigned shift right
  print((-value >> 4)); // Shift right
  print((-value >>> 4)); // Unsigned shift right
}

void main() {
  bitwiseAndShiftOperator();
}
