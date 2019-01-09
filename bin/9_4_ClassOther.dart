main() {
  testInterface();
  testOverrideOperator();
}

/**
 * Dart 中没有关键字 interface，使用 class 声明接口，
 * 子类通过 implement 实现接口，必须实现其中所有的方法，包括 getter 和 setter 方法
 */
testInterface() {
  var person = Student();
  var person1 = Person('lijiankun24');
  greet(person);
  greet(person1);
}

greet(Person person) {
  person?.greetTo('Teacher');
}

/**
 * Dart 中的类可以重写操作符，如 Point 类所示
 * 需要注意的是，如果重写的是 ==，则一定也需要重写 hashCode 方法，如 Circle 所示
 */
testOverrideOperator() {
  // var originPoint1 = new OriginPoint(10, 10);
  // var originPoint2 = new OriginPoint(10, 10);
  // print(originPoint1 + originPoint2);   // Error: The method '+' isn't defined for the class '#lib1::OriginPoint'

  var point1 = new Point(20, 20);
  var point2 = new Point(20, 20);
  print(point1 + point2);

  var circle1 = Circle(10, 10, 10);
  var circle2 = Circle(10, 10, 10);
  var circle3 = Circle(10, 10, 20);
  print(circle1 == circle2);
  print(circle1 == circle3);
  print(circle2 == circle3);
}

class Person {
  var name;

  Person(this.name);

  greetTo(String name) {
    print('Hello, $name, I\'m $name');
  }

  eat(var food) {
    print('I like ead $food');
  }
}

class Student implements Person {
  get name {
    return 'lijiankun24';
  }

  set name(value) {
    name = value;
  }

  @override
  greetTo(String name) {
    print('Hi, $name, do you know who i am?');
  }

  @override
  eat(food) {
    print('I don\'t like eat $food');
  }
}

class OriginPoint {
  int x;
  int y;
  double distance;

  OriginPoint(this.x, this.y);

  @override
  String toString() {
    return 'OriginPoint{x: $x, y: $y}';
  }
}

class Point {
  int x;
  int y;
  double distance;

  Point(this.x, this.y);

  Point operator +(Point p) {
    return Point(this.x + p.x, this.y + p.y);
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}

class Circle {
  int x;
  int y;
  double radius;

  Circle(this.x, this.y, this.radius);

  @override
  bool operator ==(var other) {
    if (other == null) {
      return false;
    }
    if (other is! Circle) {
      return false;
    }

    bool res = (other as Circle).x == this.x;
    res = (other as Circle).y == this.y && res;
    res = (other as Circle).radius == this.radius && res;
    return res;
  }

  @override
  int get hashCode => (x.hashCode + y.hashCode + radius.hashCode);
}
