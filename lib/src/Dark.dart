import 'Fly.dart';
import 'Walk.dart';
import 'Swim.dart';

class Dark with Fly, Walk, Swim {}

main() {
  var dark = Dark();
  dark.fly();
  dark.walk();
  dark.swim();
}
