import 'Walk.dart';
import 'Swim.dart';

class Animal with Walk, Swim {
  int age;
  String _name;

  Animal(this.age);

  void generate() {
    print('Animal is generating');
  }

  void printName() {
    print('The name is $_name');
  }

  @override
  walk() {
    print('Animal walk !!! ');
  }
}

class Person extends Animal {
  Person(int age) : super(age) {
    print('This person age is $age');
  }
}

class Cat extends Animal {
  Cat(int age) : super(age) {
    print('This cat age is $age');
  }
}
