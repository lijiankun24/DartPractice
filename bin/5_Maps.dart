main() {
  var gifts = {
    // Keys: Values
    'one': 'apple',
    'two': 'watch',
    'three': 'phone'
  };
  print(gifts);                    // {one: apple, two: watch, three: phone}
  print(gifts.runtimeType);        // _InternalLinkedHashMap<String, String>
  gifts['four'] = 'computer';
  print(gifts);                    // {one: apple, two: watch, three: phone, four: computer}
  print(gifts.remove('two'));      // watch
  print(gifts);                    // {one: apple, three: phone, four: computer}

  var targets = {
    // Keys: Values
    1: 'dart',
    2: 'android',
    10: 'flutter'
  };
  print(targets);                  // {1: dart, 2: android, 10: tcp/ip}
  print(targets.runtimeType);      // _InternalLinkedHashMap<int, String>

  var cities = Map();
  cities[1] = 'beijing';
  cities[2] = 'shanghai';
  cities[3] = 'shenzheng';
  print(cities);
  print(cities.runtimeType);

  var numbers = Map<int, int>();
  numbers[1] = 10;
  numbers[2] = 20;
  numbers[3] = 30;
  print(numbers);                 // {1: 10, 2: 20, 3: 30}
  print(numbers.runtimeType);     // _InternalLinkedHashMap<int, int>
  print(numbers.keys);
  print(numbers.values);

  final phones = {'one': 'iphone7', 'two': 'xiaomi'};
  print(phones);
  phones['three'] = 'huawei';
  print(phones);
  print(phones.containsKey('three'));
  print(phones.containsKey('four'));

  final os = const {'one': 'macOS', 'two': 'windows', 'three': 'linux'};
  print(os);
//  os['four'] = 'unix';// error: Unsupported operation: Cannot set value in unmodifiable Map

  // 循环遍历 map 中的值
  os.forEach((key, value) {
    print(key);
    print(value);
  });
  os.keys.forEach((key) {
    print(key);
  });
  os.values.forEach((value) {
    print(value);
  });
}
