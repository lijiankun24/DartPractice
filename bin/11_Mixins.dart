main() {
  testMixin();
}

/**
 * Mixin 是 Dart 中的一个新概念，个人理解 Mixin 是 Dart 中 extends 父类和 implement 接口的一个结合体，
 * 比起 extends 父类和 implement 接口都更加方便灵活
 * 1. Animal 类中有 generate() 方法；Person 类中有 generate() 和 eat(var food) 方法
 * 2. class Human = Person with Animal; Human 类中类的方法则是 Person 类和 Animal 类方法的合集，若两个类中有相同的方法，则取 Animal 类中的方法
 *
 * class Child = Parent with Person, Animal;
 * 1. 上面表达式等同于 class Child = (Parent with Person) with Animal;
 * 2. Child 类中的方法则是 Parent、Person、Animal 三个类方法的合集，若一个方法在三个类中都有，则取 Animal 类中的，若只在 Parent 和 Person 中有，则取 Person 中的
 *
 * 在使用 mixin 产生类时，其中的属性和方法有类似的效果
 */
testMixin() {
  var human = new Human();
  human.generate();
  human.eat('meat');

  var parent = new Child();
  parent.generate();
  parent.eat('food');
  parent.sleep();
}

class Animal {
  void generate() {
    print('Animal generates');
  }
}

class Person {
  void generate() {
    print('Person generates');
  }

  void eat(var food) {
    print('Person is eating');
  }
}

class Human = Person with Animal;


class Parent {
  void generate() {
    print('Parent generates');
  }

  void eat(var food) {
    print('Parent is eating');
  }

  void sleep() {
    print('Parent is sleeping');
  }
}

class Child = Parent with Person, Animal;