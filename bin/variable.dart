// 변수를 선언하는 방법
void variableExample() {
  var name = 'bob';
  Object name1 = 'bob';
  dynamic name2 = 'bob';
  String name3 = 'bob';
}

/* var : 자료형이 결정된 이후 다른 타입으로 변경 불가
 * dynamic : 자료형이 결정된 이후에도 다른 타입으로 변경 가능
 */
void variableExample2() {
  var name = 123;
  //name = "어라운드 허브";

  dynamic vb = 123;
  print(vb);
  vb = "어라운드 허브";
  print(vb);
}

void integerExample() {
  var a = 1;
  int b = 1;
  num c = 1;

  var hex = 0xDEADBEEF;
  print(hex);
  int hex2 = 0xDEADBEEF;
}

void doubleExample() {
  var y = 1.1;
  double z = 1.1;
  num zz = 1.1;

  var exponents = 1.42e5;
  double exponentz = 1.42e5;
  print(exponentz);
}

// int 타입에서 double 타입으로 자동으로 캐스팅 되지 않음
void numberCasting() {
  int a = 123;
  //double b = a;
  double b = a.toDouble();
  print(b);

  double c = 123;
  print(c);
}

void stringToIntegerExample() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);
  print(one);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  print(onePointOne);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  print(oneAsString);

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  print(piAsString);
}

void stringExample() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s3);
  print(s4);
}

void constantExample() {
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  //const invalidConstString = '$aNum $aBool $aString $aConstList';
}

void booleanExample() {
  // Check for an empty string.
  var fullName = '';
  print(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  print(hitPoints <= 0);

  // Check for null.
  var unicorn;
  print(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  print(iMeantToDoThis.isNaN);
}

void main() {
  booleanExample();
}
