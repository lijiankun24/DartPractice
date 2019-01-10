main() {
  testEnum();
}

/**
 * Dart 中的枚举类
 * 1. 只能用来定义类型，不可以有表达式、变量等
 * 2. 可以通过 Enum 的 values 属性得到枚举类所有的值
 * 3. 可以通过具体的 Enum 值的 index 属性得到该 Enum 在 Enum 声明中的位置（从 0 开始）
 */
testEnum() {
  List<Color> list = Color.values;
  for (Color color in list) {
    print('$color index is ${color.index}');
  }

  var red = Color.red;
  switchEnum(red);
}

switchEnum(Color color) {
  switch (color) {
    case Color.red:
      print('switchEnum The red\'s index is ${color.index}');
      break;
    case Color.blue:
      print('switchEnum The blue\'s index is ${color.index}');
      break;
    case Color.green:
      print('switchEnum The green\'s index is ${color.index}');
      break;
    case Color.origin:
      print('switchEnum The origin\'s index is ${color.index}');
      break;
  }
}

enum Color { red, blue, green, origin }
