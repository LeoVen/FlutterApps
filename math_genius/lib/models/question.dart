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

  Set<num> getWrongAnswers({int amount = 4, int delta = 20}) {
    assert(amount > 0, "amount > 0 to generate wrong answers");

    // +1 for the correct answer to be added by the end
    Set<num> resultSet = Set<num>();

    while (resultSet.length < amount + 1) {
      int tmp = randInt(this._answer - delta, this._answer + delta);

      // Only add unique values, so one that equals the answer is not valid
      if (tmp == this._answer) continue;

      resultSet.add(tmp);
    }

    resultSet.add(this._answer);

    // Shuffle set
    List<num> tmpList = resultSet.toList();
    tmpList.shuffle();

    return tmpList.toSet();
  }

  num operate() => OperationUtils.operate(_op, num1, num2);

  void setNums(num num1, num num2) {
    this.num1 = num1;
    this.num2 = num2;
  }
}
