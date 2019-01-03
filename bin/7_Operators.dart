main() {
  testIsAndAs();
  testConditionalExpressions();
}

testConditionalExpressions() {
  String a = 'a';
  String b;
  // ?? 操作符，如果 b 不为 null 则返回其本身的值，若 b 为 null，则返回 ?? 后面的值
  a = b ?? 'c';
  print(a); // console：c
  b = 'b';
  a = b ?? 'd';
  print(a); // console：b
}

testIsAndAs() {
  var person = 'Hello';
  if (person is Person) {
    print('The name is Person');
  }
//  (person as Person).number = 112; // error：type 'String' is not a subtype of type 'Person' in type cast
}

class Person {
  String name;
  int number;
}


/**
 * a .. 是 Dart 语言里面的链式调用符，可以使用 .. 调用一个对象的方法，也可以使用 .. 调用一个对象的属性，具体使用如下所示
 * b 代码 1 和代码 2 的效果是相同的，但是使用 .. 的代码 1 明显更加简洁一些
 * c .. 支持嵌套使用，如代码 3 所示
 * d 代码 4 有错误，因为 StringBuffer#write 方法返回的是 void，所以不支持 .. 链式调用
 * testCascade(){
 *   // 代码 1
 *   querySelector('#confirm')       // Get an object.
 *      ..text = 'Confirm'              // Use its members.
 *      ..classes.add('important')
 *      ..onClick.listen((e) => window.alert('Confirmed!'));
 *
 *   // 代码 2
 *   var button = querySelector('#confirm');
 *   button.text = 'Confirm';
 *   button.classes.add('important');
 *   button.onClick.listen((e) => window.alert('Confirmed!'));
 *
 *   // 代码 3
 *   final addressBook = (AddressBookBuilder()
 *         ..name = 'jenny'
 *         ..email = 'jenny@example.com'
 *         ..phone = (PhoneNumberBuilder()
 *                      ..number = '415-555-0100'
 *                      ..label = 'home')
 *                    .build())
 *         .build();
 *
 *   // 代码 4
 *   var sb = StringBuffer();
 *   sb.write('foo')
 *     ..write('bar'); // Error: method 'write' isn't defined for 'void'.
 * }
 */
