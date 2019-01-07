main() {
  testDot();
  testConstructor();
  testImmutablePoint();
  testRuntimeType();
  testGetterSetter();
}

/**
 * 在调用一个对象的变量或者方法时有两种方法：
 * 1 可以直接通过【.】(点)来调用一个对象的变量或者方法，和 Java 中的方法调用是一样的
 * 2 也可以通过【？.】(问号+点)的方式调用一个对象的变量或者方法，如果对象不为 null 则调用该方法，如果对象为 null 则不调用该方法
 */
testDot() {
  var point = Point(10, 10);
  point.printPosition();

  point = null;
  point?.printPosition(); // 将不会执行 printPosition() 方法，因为 point == null
  // point.printPosition();   // 空指针异常，error：The method 'printPosition' was called on null
}

/**
 * 在 Dart2 中，关键字 new 是可选的，可写可不写
 */
testConstructor() {
  var pointA = Point.fromOrigin();
  var pointB = Point(20, 20);
  pointA.printPosition();
  pointB.printPosition();

  var pointC = new Point.fromOrigin();
  var pointD = new Point(30, 30);
  pointC.printPosition();
  pointD.printPosition();
}

/**
 * 在 Dart 中若想定义一个编译时的对象，则可以定义一个编译时类，如 ImmutablePoint 类所示，
 * 在 ImmutablePoint 中有两个特点：
 * 1. ImmutablePoint 中的常量，应该使用 final 关键字修饰
 * 2. ImmutablePoint 的构造方法应该使用 const 修饰
 */
testImmutablePoint() {
  var pointA = ImmutablePoint(40, 40);
  pointA.printPosition();
}

/**
 * 可以通过一个对象的 runtimeType 获取此对象的类型
 */
testRuntimeType() {
  var point = Point(50, 50);
  var immutablePoint = new ImmutablePoint(60, 60);
  print('The point type is ${point.runtimeType}');
  print('The immutablePoint type is ${immutablePoint.runtimeType}');
}

/**
 * 类中的变量，有如下两条规则
 * 1. 默认会自动生成 getter 方法，如果变量没有被 final 关键字修饰，还会生成 setter 方法
 * 2. 如果类中的变量，没有赋初始值，则默认的初始值是 null
 */
testGetterSetter() {
  var rect = new Rect();
  rect.x = 10;
  print(rect);
}

class Point {
  num x;
  num y;

  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }

  Point.fromOrigin() {
    x = 10000;
    y = 10000;
  }

  void printPosition() {
    print('The x is $x and the y is $y');
  }
}

class ImmutablePoint {
  final num x, y;

  const ImmutablePoint(this.x, this.y);

  printPosition() {
    print('The ImmutablePoint, the x is $x and the y is $y');
  }
}

class Rect {
  int x;
  int y;
  double distance = 0;

  @override
  String toString() {
    return 'Point{x: $x, y: $y, distance: $distance}';
  }
}
