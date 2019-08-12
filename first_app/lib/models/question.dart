import 'operation.dart';
import '../util/randint.dart';

class Question {
  num num1 = 0;
  num num2 = 0;
  num _answer = 0;
  Operation _op;

  Question(this._op, num num1, num num2) {
    this.num1 = num1;
    this.num2 = num2;

    if (_op == Operation.division) {
      // Check some special cases
      if (this.num2 == 0) {
        this.num2 = 1;
      }
      if (this.num1 % this.num2 != 0) {
        this.num1 += this.num2 - (this.num1 % this.num2);
      }
    }

    this._answer = operate();
  }

  num getAnswer() {
    return _answer;
  }

  Operation getOp() {
    return _op;
  }

  List<num> getWrongAnswers({int amount = 4, int delta = 20}) {
    assert(amount > 0, "amount > 0 to generate wrong answers");

    // +1 for the correct answer to be added by the end
    List<num> result = List<num>(amount + 1);

    for (int i = 0; i < amount; i++) {
      result[i] = randInt(this._answer - delta, this._answer + delta);
    }

    result[amount] = _answer;
    result.shuffle();

    return result;
  }

  num operate() => OperationUtils.operate(_op, num1, num2);

  void setNums(num num1, num num2) {
    this.num1 = num1;
    this.num2 = num2;
  }
}
