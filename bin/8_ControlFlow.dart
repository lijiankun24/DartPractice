main() {
  testIfAndElse();
  testForLoop();
  testSwitch();
}

/**
 * 和 Java 中一样的 if-else 用法
 */
testIfAndElse() {
  var a = 100;
  var b = 200;
  if (a > b) {
    print('a > b');
  } else {
    print('a <= b');
  }
}

/**
 * 在 Dart 中，用于 ForLoops 的有以下三种形式：
 * 1. for(int i = 0; i < 5; i++)
 * 2. 如果是 Iterable 类型的对象，可以用 forEach 循环
 * 3. 如果是 List、Set 则可以用 for(var element in List) 的形式
 */
testForLoop() {
  var callbacks = [];
  for (int i = 0; i < 5; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((element) {
    element();
    print('forEach ');
  });
  for (var callback in callbacks) {
    callback();
    print('for in ');
  }
}

/**
 * 在 Dart 中，switch 语句可以用于 Integer、String 等编译时常量
 */
testSwitch() {
  var one = 'ONE';
  switch (one.toLowerCase()) {
    case 'one':
      print('switch one');
      break;
    case 'two':
      print('switch two');
      break;
    case 'three':
      print('switch three');
      break;
  }
}
