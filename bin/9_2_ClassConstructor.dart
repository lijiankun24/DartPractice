import 'dart:math';

main() {
  testConstructor();
  testNamedConstructor();
  testInheritConstructor();
  testInitializerList();
  testRedirectConstructor();
  testFactoryConstructor();
}

/**
 * 关于类的构造方法：
 * 1. 和 Java 一样，每个类都有一个默认的无参构造方法，除非显示的定义有参构造方法；默认的无参构造方法会调用父类的无参构造方法
 * 2. 如 Rect 和 Rect1 两个类所示，两种构造方法效果是相同的，明显 Rect 构造方法更加方便简洁
 * 3. 构造方法不会继承
 */
testConstructor() {
  var rect = Rect(10, 10, 10, 10);
  var rect1 = Rect1(20, 20, 20, 20);
  print(rect);
  print(rect1);
}

/**
 * 一个类可以有命名构造方法，如 Circle 类所示
 */
testNamedConstructor() {
  var circle = Circle.origin();
  print(circle);

  var circle1 = Circle.fromXY(10, 10);
  print(circle1);
}

/**
 * 对于无参构造方法，子类的无参构造方法会自动调用父类的无参构造方法，并且是先调用父类的无参构造方法，再调用子类的无参构造方法。如 Student 所示：
 * 1. 对于 student 的输出如下：
 *    Person constructor
 *    Student constructor
 *
 * 对于命名构造方法
 * 1. 如果子类不指定调用的父类的构造方法，且父类有默认的无参构造方法，则会自动调用父类的无参构造方法。如 Student.Name 所示：
 *    Person constructor
 *    Student NamedConstructor
 * 2. 如果父类中没有默认的无参构造方法，则子类的构造方法需要指定调用父类的构造方法，如 Cat.fromName 所示
 *    Animal Constructor
 *    Cat constructor
 */
testInheritConstructor() {
  Student();
  Student.Name('society');
  Cat.name('Origin');
}

/**
 * Dart 中的构造方法中，有 InitializerList 的概念，是指在构造方法的 () 之后，方法体之前，用 : (冒号)，连接对象属性的一些初始化语句
 * 如 Point(Map<String, int> map) 和 Point.fromAssert(this.x, this.y) 构造方法所示
 */
testInitializerList() {
  var map = {'X': 3, 'Y': 4};
  Point(map);
  Point.fromAssert(3, 4);
//  Point.fromAssert(-3, 4); // Unhandled exception: Failed assertion: line 74 pos 45: '+ map[': is not true.
}

/**
 * Redirecting Constructor can't have a body
 */
testRedirectConstructor() {
  Car.name('Ford');
}

/**
 * 使用 factory 关键字修饰的构造方法，在构建实例时，不会每次都创建新的实例对象，可以从缓存中取已经创建过的实例对象
 */
testFactoryConstructor() {
  Logger logger = Logger('UI Thread');
  logger.log('first log');
}

class Logger {
  static final Map<String, Logger> _cache = new Map();
  final String name;
  bool canLog = true;

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      Logger logger = Logger._instance(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._instance(this.name);

  void log(var msg) {
    if (!canLog) {
      return;
    }
    print(msg);
  }
}

class Car {
  int age;
  String name;

  Car.name(String name) : this(0, name);

  Car(this.age, this.name) {
    print('Car(this.age,this.name) constructor');
  }
}

class Point {
  int x;
  int y;
  double distance;

  Point(Map<String, int> map)
      : x = map['X'],
        y = map['Y'],
        distance = sqrt(map['X'] * map['X'] + map['Y'] * map['Y']) {
    print(this.toString());
  }

  Point.fromAssert(this.x, this.y) : assert(x >= 0) {
    print('fromAssert constructor ${this.toString()}');
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y, distance: $distance}';
  }
}

class Person {
  var name;

  Person() {
    print('Person constructor');
  }
}

class Student extends Person {
  var school;

  Student() {
    print('Student constructor');
  }

  Student.Name(this.school) {
    print('Student NamedConstructor');
  }
}

class Animal {
  int age;

  Animal.age(this.age) {
    print('Animal Constructor');
  }
}

class Cat extends Animal {
  String name;

  Cat.name(this.name) : super.age(0) {
    print('Cat constructor');
  }
}

class Rect {
  int left;
  int top;
  int width;
  int height;

  Rect(this.left, this.top, this.width, this.height);

  @override
  String toString() {
    return 'Rect{left: $left, top: $top, width: $width, height: $height}';
  }
}

class Rect1 {
  int left;
  int top;
  int width;
  int height;

  Rect1(int left, int top, int width, int height) {
    this.left = left;
    this.top = top;
    this.width = width;
    this.height = height;
  }

  @override
  String toString() {
    return 'Rect1{left: $left, top: $top, width: $width, height: $height}';
  }
}

class Circle {
  int x;
  int y;
  double radius;

  Circle.origin() {
    x = 0;
    y = 0;
    radius = 10;
  }

  Circle.fromXY(this.x, this.y) {
    radius = 20;
  }

  @override
  String toString() {
    return 'Circle{x: $x, y: $y, radius: $radius}';
  }
}
