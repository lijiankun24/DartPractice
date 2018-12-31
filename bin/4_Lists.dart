main() {
  var listA = [1, 2, 3, 4, 5];
  print(listA);
  print(listA.runtimeType);
  listA.removeAt(2);
  print(listA);

  var listB = [1, '2', '3', "4"];
  print(listB);
  print(listB.runtimeType);

  var listC = [1, 1.2, 3.14, 100];
  print(listC);
  print(listC.runtimeType);

  var listD = [1, 4, 2, 6, 10, 9];
  for (int i = 0; i < listD.length; i++) {
    print(listD[i]);
  }
  for (int element in listD) {
    print(element);
  }
  listD.forEach((element) {
    print(element);
  });
  listD.forEach(print);

  const listE = [1, 2, 3, 4, 5];
  print('listE.length ${listE.length}');
//  print(listE.removeLast());                  // error：const 修复的 List 不可以改变其中的内容
  print(listE);

  var listF = List();
  print(listF.runtimeType);                     // List<dynamic>

  var listG = List<int>(5);
  print(listG);                                 // [null, null, null, null, null]
//  listG.add(10);                                // error：Cannot add to a fixed-length list
  print(listG);

}
