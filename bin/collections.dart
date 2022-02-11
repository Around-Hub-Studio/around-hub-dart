void listExample1() {
  List<int> array = [1, 2, 3, 4, 5];
  List<String> stringArray = ["어라운드허브", "스튜디오", '플래처'];

  print(array);
  print(array[1]);
}

void listExample2() {
  var list1 = [1, 2, 3];
  print(list1.runtimeType);

  var list2 = ['car', 'boat', 'plane'];

  var list3 = ['aroundHub', ...list2];
  print(list3);

  var list4 = ['#0', for (var i in list1) '#$i'];
  print(list4);

  bool isActive = true;
  var list5 = [0, 1, 2, 3, if (isActive) 4];
  print(list5);

  dynamic list6 = [1, 2, 3];
  print(list6.runtimeType);
}

void listExample3() {
  var list1 = [1, 2, 3];
  list1.add(-4);

  print(list1.length);
  print(list1.reversed);
  print(list1.runtimeType);
  print(list1.first);
  print(list1.isNotEmpty);
}

void setExample1() {
  Set<int> set1 = {1, 2, 3};
  Set<String> set2 = {'a', 'z', 'd', 'b'};
  var emptySet = <String>{}; // 빈 객체 생성
  Set<String> emptySet2 = {}; // 빈 객체 생성

  print(set1);
  print(set2);

  var set3 = {1, 2, 3};
}

void setExample2() {
  Set<String> set = {'a', 'z', 'd', 'b'};
  set.add('dbcs');
  set.add('a');

  print(set);
  print(set.length);
  print(set.first);
  print(set.isNotEmpty);
  print(set.runtimeType);

  print(set.contains('a'));
  print(set.elementAt(1));
  print(set.elementAt(0));
}

void mapExample1() {
  Map<int, String> map = {1: "Around", 2: "Hub", 4: "Studio"};
  print(map);
  var map2 = {1: "Around", 2: "Hub", 4: "Studio"};

  map[3] = "Flature";
  print(map);
  print(map[3]);
  print(map.runtimeType);
}

void main() {
  mapExample1();
}
