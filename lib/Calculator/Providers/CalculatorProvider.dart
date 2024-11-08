import 'package:calculator/Calculator/Operations/CalculationHandler.dart';
import 'package:flutter/cupertino.dart';

class CalculatorProvider extends ChangeNotifier {
  var calculationHandler = CalculationHandler();

  void onButtonPressed(String value) {
    calculationHandler.makeCalculation(value);
    notifyListeners();
  }
}