import 'dart:async';

import 'dart:io';

void main() {
  var stream = countingNumber(55);
  recieveStream(stream);
}

void recieveStream(Stream<int> stream) async {
  await for (var value in stream) {
    print("input : $value");
  }
}

Stream<int> countingNumber(int to) async* {
  for (int i = 0; i < to; i++) {
    print("countNumber : $i");
    sleep(const Duration(seconds: 1));
    yield i;
  }
}
