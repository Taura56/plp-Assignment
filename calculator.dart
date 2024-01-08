import 'dart:io';

class Calc {
  double num1 = 0.0;
  double num2 = 0.0;

  void getOperands() {
    print("Enter first number: ");
    num1 = double.parse(stdin.readLineSync()!);

    print("Enter second number: ");
    num2 = double.parse(stdin.readLineSync()!);
  }

  double add() => num1 + num2;
  double subtract() => num1 - num2;
  double multiply() => num1 * num2;
  double divide() {
    if (num2 == 0) {
      print("Cannot divide by zero.");
      return 0.0;
    } else {
      return num1 / num2;
    }
  }
}

void main() {
  Calc calc = Calc();
  calc.getOperands();

  print("Select operation: ");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");

  int choice = int.parse(stdin.readLineSync()!);

  double result = 0.0;
  switch (choice) {
    case 1:
      result = calc.add();
      break;
    case 2:
      result = calc.subtract();
      break;
    case 3:
      result = calc.multiply();
      break;
    case 4:
      result = calc.divide();
      break;
    default:
      print("Invalid choice.");
  }

  print("Result: $result");
}
