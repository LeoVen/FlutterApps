import '../util/rand_utils.dart';

class Die {
  int sides;

  Die(this.sides) : assert(sides > 0);

  int roll() {
    return randInt(1, sides);
  }
}
