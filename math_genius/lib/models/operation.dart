import 'dart:math';

enum Operation {
  summation,
  subtraction,
  multiplication,
  division,
  invalidOperation,
}

class OperationUtils {

  static final _totalValidOps = 4;

  static final _random = Random();

  static Operation random() {
    int _op = _random.nextInt(_totalValidOps);

    switch (_op) {
      case 0:
        return Operation.summation;
      case 1:
        return Operation.subtraction;
      case 2:
        return Operation.multiplication;
      case 3:
        return Operation.division;
      default:
        return Operation.invalidOperation;
    }
  }

  static num operate(Operation _op, num num1, num num2) {
    switch (_op) {
      case Operation.summation:
        return num1 + num2;
      case Operation.subtraction:
        return num1 - num2;
      case Operation.multiplication:
        return num1 * num2;
      case Operation.division:
        assert(num2 != 0);
        return num1 ~/ num2;
      default:
        return 0;
    }
  }

  static String operationChar(Operation _op) {
    switch (_op) {
      case Operation.summation:
        return '+';
      case Operation.subtraction:
        return '-';
      case Operation.multiplication:
        return '*';
      case Operation.division:
        return '/';
      default:
        return '?';
    }
  }
}
