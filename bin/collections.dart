void listExample() {
  var list1 = [1, 2, 3];
  print(list1);
  print(list1[1]);

  var list2 = ['car', 'boat', 'plane'];

  var list3 = ['aroundHub', ...list2];

  var list4 = ['#0', for (var i in list1) '#$i'];
  print(list4);

  bool isActive = true;
  var list5 = [0, 1, 2, 3, if (isActive) 4];
  print(list5);
}

void main() {
  listExample();
}
