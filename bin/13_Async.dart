main() {
//  testAsync();
  testSync();
}

/**
 * Future 异步执行，在使用 await 的时候，方法必须用 async 修饰
 */
testAsync() async {
  String res = await testFuture('async');
  print(res);
}

/**
 * Future 同步执行
 */
testSync() {
  print('Sync starts');
  testFuture('sync').then<String>((value) {
    print(value);
  });
  print('Sync ends');
}

Future<String> testFuture(String msg) {
  print('testFuture starts');
  return Future<String>.delayed(Duration(milliseconds: 2000), () {
    print('testFuture ends');
    return '$msg Future';
  });
}
