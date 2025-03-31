import 'dart:io';
import 'dart:math';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) {
    if (b == 0) throw UnsupportedError('Division by zero is not allowed');;
    return a / b;
  }
  double modulus(double a, double b) => a % b;
  double power(double a, double b) => pow(a, b).toDouble();
}

void main() {
  Calculator SimpleCalculator = Calculator();

  while (true) {
    try {
      print('\nSimple CLI Calculator');
      print('Enter first number:');
      String? input1 = stdin.readLineSync();
      if (input1 == null || input1.isEmpty) throw FormatException('Invalid input. Please enter a number.');
      double num1 = double.parse(input1);

      print('Enter an operator (+, -, *, /, %, ^):');
      String? operator = stdin.readLineSync();
      if (operator == null || !['+', '-', '*', '/', '%', '^'].contains(operator)) {
        throw FormatException('Invalid operator. Please enter one of +, -, *, /, %, ^.');
      }

      print('Enter second number:');
      String? input2 = stdin.readLineSync();
      if (input2 == null || input2.isEmpty) throw FormatException('Invalid input. Please enter a number.');
      double num2 = double.parse(input2);

      double result;
      switch (operator) {
        case '+':
          result = SimpleCalculator.add(num1, num2);
          break;
        case '-':
          result = SimpleCalculator.subtract(num1, num2);
          break;
        case '*':
          result = SimpleCalculator.multiply(num1, num2);
          break;
        case '/':
          result = SimpleCalculator.divide(num1, num2);
          break;
        case '%':
          result = SimpleCalculator.modulus(num1, num2);
          break;
        case '^':
          result = SimpleCalculator.power(num1, num2);
          break;
        default:
          throw FormatException('Invalid operation.');
      }

      print('Result: $result');
    } catch (e) {
      if (e is UnsupportedError) {
        print('Error: Division by zero is not allowed.');
      } else if (e is FormatException) {
        print('Error: ${e.message}');
      } else {
        print('An unexpected error occurred: $e');
      }
    }

    print('Do you want to perform another calculation? (yes/no)');
    String? continueInput = stdin.readLineSync();
    if (continueInput == null || continueInput.toLowerCase() != 'yes') {
      print('Exiting calculator. Goodbye!');
      break;
    }
  }
}