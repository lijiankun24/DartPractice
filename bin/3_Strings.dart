main(){
  String a = "hello";
  print(a);
  String b = 'hello';
  print(b);
  var c = "hello";
  print(c);
  var d = 'hello';
  print(d);

  // 使用 ${} 在字符串中插入值，若是一个变量则可以省略 {}, 若是表达式则不可以省略 {}
  var e = '$a world!';
  print(e);
  var f = '${b} world!';
  print(f);
  var g = '$a + $b world!';
  print(g);
  var h = '${a + b} world!';
  print(h);

  // dart 中的字符串，如果换行处没有封号，则自动连接两个字符串
  var i = '''hello '''
  '''world!''';
  print(i);
  var j = 'hello '
  'world!';
  print(j);
  var k = 'hello '
      "world!".toUpperCase();
  print(k);                         // HELLO WORLD!

  // 在 dart 的字符串前面加 r，表示忽略转义字符，原样输出字符串
  var l = "hello\nworld!";
  print(l);                         // 换行输出 hello world
  var m = r"hello\nworld!";
  print(m);                         // console: hello\nworld!

  var n = 'hello world!';
  var o = 'hello world!';
  print(n == o);                    // true，在 dart 中字符串 String 没有 equals() 方法，== 用于判断两个字符串的内容是否相等
  print(n.startsWith('hello'));     // true
  print(n.length);                  // 12
  print(n.endsWith('hello'));       // false
  print(n.replaceAll('h', 'H'));    // Hello world!
}