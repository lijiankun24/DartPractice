main() {
  testGetterSetter();
  testAbstractMethod();
}

/**
 * 1. 如果在 Class 中显式的定义了属性，会自动生成对应的 getter 和 setter 方法
 * 2. 也可以通过 get 和 set 关键字计算生成对象的属性和对应的 getter 和 setter 方法，如 Rect 类所示
 */
testGetterSetter() {
  var rect = Rect(10, 10, 10, 10);
  print(rect);
  print('The right is ${rect.right}');
  print('The bottom is ${rect.bottom}');
  rect.right = 30;
  rect.bottom = 30;
  print(rect);
}

/**
 * Dart 中的抽象类和 Java 中的抽象类区别不大
 */
testAbstractMethod() {
  var student = Student();
  student.say();
  student.eat();
}

abstract class Person {
  void eat() {
    print('I\'m eating.');
  }

  void say();
}

class Student extends Person {

  @override
  void say() {
    print('How do you do?');
  }

  @override
  void eat() {
    print('I\'m eating food.');
  }
}

class Rect {
  num left, top, width, height;

  Rect(this.left, this.top, this.width, this.height);

  num get right {
    return left + width;
  }

  set right(num value) {
    left = value - width;
  }

  num get bottom => top + height;

  set bottom(num value) => top = value - height;

  @override
  String toString() {
    return 'Rect{left: $left, top: $top, width: $width, height: $height}';
  }
}
