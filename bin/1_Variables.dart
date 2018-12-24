//class HelloWorld {
//  const static TAG = 'HelloWorld';
//  static const className = 'HelloWorld';

main() {

  dynamic name = 'xiaoming';        // dynamic 修饰符修饰的变量，可以改变该变量所指向的变量的类型
  print(name);                      // console：xiaoming
  name = 13;
  print(name);
  name = true;
  print(name);                      // console：true

  var age = 13;                     // var 可以先定义变量，然后根据变量具体的值推断其变量类型，但一经指定，便不可以在改变变量所指向的变量类型
  print(age);                       // console：13
  // age = '13';                    // error


  String worker = 'xiaoming';       // 在定义时则指定变量的类型，和 Java 一致
  print(worker);                    // console：xiaoming
  bool isMarried;
  print(isMarried);                 // console：null
  isMarried = true;
  print(isMarried);                 // console：true

  final school = 'beijing';         // final 定义了变量之后便不可以在改变变量的值, final 变量值是在实例构造方法调用之前被初始化
  print(school);                    // console：beijing
  // school = 'society';            // error

  const parent = 'xiaohong';        // const 定义了变量之后便不可以在改变变量的值, 和 final 关键字不同的是，const 是在编译时已初始化的
  print(parent);
  // parent = 'xiaohua';            // error
  const lover = null;
  // lover = 'xiaohua';             // console：null
  print(lover);

  final names = ['0', '1', '2', '3'];
  names[0] = 'lijiankun0';          // 可以改变 index 所对应的值，但是不可以改变
  names[3] = 'lijiankun3';
  // names = [];                    // error, final 申明的数组，不可以改变数组的索引
  print(names);                     // console：[lijiankun0, 1, 2, lijiankun3]

  const ages = [];
  // ages = [2, 3, 4];              // const 和 final 一样
  print(ages);                      // console: null
}
//}
