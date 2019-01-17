import 'Animal.dart';
import 'Walk.dart';

main() {
  var person = new Person(10);
  person.walk();
}

class Person extends Animal with Walk {
  Person(int age) : super(age) {
    print('Person init!! age is $age');
  }

  @override
  walk() {
    print('Person walk!!!');      // Person walk!!!
  }
}
