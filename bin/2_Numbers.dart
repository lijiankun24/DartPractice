main() {
  // num 类型的变量，可以指向 int 或 double
  num a = 10;
  print(a);
  a = 12.0;
  print(a);

  int b = 10;
  print(b);
  // error，double 数据不能赋值给 int 型变量，Error: A value of type 'dart.core::double' can't be assigned to a variable of type 'dart.core::int'.
  // b = 12.0;

  double c = 100.0;
  print(c);             // console：100.0
  print(c.runtimeType); // console：double
  c = 120;              // 会自动将 int 装换为 double 类型
  print(c);             // console：120.0
  print(c.runtimeType); // console：double

  // var 型变量会自动根据值推断其类型
  var d = 1992;
  print(d.runtimeType); // console：int
  // double 数据不能赋值给 int 型变量，Error: A value of type 'dart.core::double' can't be assigned to a variable of type 'dart.core::int'.
  // years = 2000.0;
  var e = 12.0;
  e = 10;               // 会自动将 int 装换为 double 类型
  print(e.runtimeType); // console：double

  double f = 3.1415;
  int g = 1;
  print(f + g);         // console：4.141500000000001
  print(f - g);         // console：2.1415
  print(f * g);         // console：3.1415
  print(f / g);         // console：3.1415
  print(f ~/ g);        // console：3
  print(f % g);         // console：0.14150000000000018

  print(0 / 0);         // console：NaN

  print(7.isEven);      // 奇数，console：false
  print(7.isOdd);       // 奇数，console：true
  print(8.isEven);      // 奇数，console：true
  print(8.isOdd);       // 奇数，console：false

  print(-6.abs());      // 取绝对值，console：-6
  print((-6).abs());    // 取绝对值，console：6
  print(6.24.round());  // 四舍五入，console：6
  print(6.8.round());   // 四舍五入，console：7
  print(6.28.ceil());   // 不小于6的最小整数，console：7
  print(6.28.floor());  // 不大于6的最大整数，console：6
}
