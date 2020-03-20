import 'dart:math';

class CalculatorBMI {
  // Body Mass Index
  final int height;
  final int weight;
  double _bmi;

  CalculatorBMI({this.height, this.weight});

  String calBMI() {
    _bmi = 1.3 * weight / pow(height / 100, 2.5); // BMI=1.3weight/height^{2.5}
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Good.';
    } else {
      return 'Eat a bit more.';
    }
  }
}
