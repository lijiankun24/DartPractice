/**
 * 每一个应用都有一个默认的顶级入口函数 main(),
 * main() 函数有一个可选的 List<String> 类型的参数
 */
bool topLevel = true;
main() {
  // Dart 语言是一门面向对象的语言，即使是函数也可以看做是一个对象，
  // 也就是说函数可以赋值给一个变量，也可以当做参数传入另一个函数中

  bool isPhone = isPhoneFunction('iphone10');
  print(isPhone);
  bool isOS = isOSFunction('mac');
  print(isOS);

  print(intDouble(20));

  testNamedFunction('xiaoming');
//  testNamedFunction('xiaohua', age: 24, gender: '女');
//  testNamedFunction('xiaogang', gender: '不明');

  testNamedFunction1('iphone7', 'hello dart!');
  testNamedFunction1('iphone7', 'hello dart!', 'apple');
//   testNamedFunction1('huawei', 'hello dart!', device: 'android');

  testNamedFunction2('xiaoming', 'hello dart');
  testNamedFunction2('xiaoming', 'hello dart', 'weixin');
  testNamedFunction2('xiaoming', 'hello dart', 'weixin', 'in happiness');

  doStaff();

  functionAsObject();
  anonymousFunction();

  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
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
 * testNamedFunction('xiaoming');                       // The name is xiaoming, the age is null, the gender is default
 * testNamedFunction('xiaohua', age: 24, gender: '女'); // The name is xiaohua, the age is 24, the gender is 女
 * testNamedFunction('xiaogang', gender: '不明');       // The name is xiaogang, the age is null, the gender is 不明
 */
void testNamedFunction(String name,
    {int age = null, String gender = 'default'}) {
  print('The name is $name, the age is $age, the gender is $gender');
}

/**
 * 可选参数也可以使用[]包围，如果使用[]包围，则可选参数必须放到最后
 *
 * testNamedFunction1('iphone7', 'hello dart!');                    // The from is iphone7, the msg is hello dart!, the device is default
 * testNamedFunction1('iphone7', 'hello dart!', 'apple');           // The from is iphone7, the msg is hello dart!, the device is apple
 * testNamedFunction1('huawei', 'hello dart!', device: 'android');  // error，Found this candidate, but the arguments don't match.
 */
void testNamedFunction1(String from, String msg, [String device = 'default']) {
  print('The from is $from, the msg is $msg, the device is $device');
}

/**
 * testNamedFunction2('xiaoming', 'hello dart')                               // xiaoming say hello dart in default
 * testNamedFunction2('xiaoming', 'hello dart', 'weixin');                    // xiaoming say hello dart in weixin
 * testNamedFunction2('xiaoming', 'hello dart', 'weixin', 'in happiness');    // xiaoming say hello dart in weixin(in happiness)
 */
void testNamedFunction2(String from, String msg,
    [String channel = 'default', String mode]) {
  var result = '$from say $msg';
  if (channel != null) {
    result = '$result in $channel';
  }
  if (mode != null) {
    result = '$result($mode)';
  }
  print(result);
}

/**
 * 可选参数的默认值必须是编译时的常量
 *
 * [xiaoming, xiaohua, xiaoyang]
 * {one: apple, two: socks, three: computer}
 */
doStaff(
    {List worker = const ['xiaoming', 'xiaohua', 'xiaoyang'],
    Map gifts = const {'one': 'apple', 'two': 'socks', 'three': 'computer'}}) {
  print(worker);
  print(gifts);
}

/**
 * 函数可以作为一个对象，可以用来作为一个函数的参数，也可以赋值给一个变量
 */
functionAsObject() {
  var list = ['one', 'two', 'three', 'four', 'five'];
  list.forEach(printElement);

  var function = (var msg) {
    print(msg);
  };
  function('hello from xiaoming');

  var louder = (String msg) {
    print("!!!${msg.toUpperCase()}!!!");
  };
  louder('hello');
}

printElement(var element) {
  print(element);
}

/**
 * 匿名函数，形如下，参数类型可以省略，可以有一个或多个参数
 * ([[Type] param1[, …]]) {
 *    codeBlock;
 *  };
 */
anonymousFunction() {
  var list = ['one', 'two', 'three', 'four', 'five'];
  list.forEach((element) {
    print(element);
  });
}
