main() {
  // Dart 语言是一门面向对象的语言，即使是函数也可以看做是一个对象，
  // 也就是说函数可以赋值给一个变量，也可以当做参数传入另一个函数中

  bool isPhone = isPhoneFunction('iphone10');
  print(isPhone);
  bool isOS = isOSFunction('mac');
  print(isOS);

  print(intDouble(20));
}

bool isPhoneFunction(var phoneName) {
  var phoneList = ['iphone7', 'iphone8', 'huawei', 'xiaomi', 'oppo'];
  return phoneList.contains(phoneName);
}

// 函数可以省略其要求的返回值类型
isOSFunction(var phoneName) {
  var phoneList = ['mac', 'windows', 'linux', 'unix'];
  return phoneList.contains(phoneName);
}

// 箭头函数，如果函数中只有一行语句，可以省略 { }
intDouble(int num) => num * 2;

/**
 * 函数包含可选的参数
 *
 * testNamedFunction('xiaoming');
 * testNamedFunction('xiaohua', age: 24, gender: '女');
 * testNamedFunction('xiaogang', gender: '不明');
 */
void testNamedFunction(String name, {int age = 20, String gender = '男'}) {
  print('The name is $name');
  print('The age is $age');
  print('The gender is $gender');
}
