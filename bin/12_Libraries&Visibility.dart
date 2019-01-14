import 'package:DartPractice/src/Animal.dart' hide Cat;  // 可以通过 hide 关键字隐藏该文件中的 Cat 类
import '9_2_ClassConstructor.dart' show Circle;          // 可以通过 show 关键字，只可见该文件中的 Circle 类
import '9_3_ClassMethod.dart' as ClassMethod;            // 可以通过 as 关键字给一个文件起别名
/**
 * Dart 中没有 private、protected、public 等修饰符概念
 * 只有包可见性，如果某个方法或变量以 '_' 开头则只在该包内可见，若不是 '_' 开头的，则所有地方可见
 */
main() {
  var animal = new Animal(10);
  animal.generate();
  animal.printName();
  // animal._name 访问失效，因为是 '_' 开头的，所以只是包可见的

  var person = new Person(20);
  person.generate();

  // var cat = new Cat(20);

  var circle = new Circle.origin();
  print(circle.toString());

  var student = new ClassMethod.Student();
  student.eat();
}
