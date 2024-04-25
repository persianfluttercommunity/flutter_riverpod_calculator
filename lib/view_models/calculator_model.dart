import 'package:flutter/material.dart';
import 'package:flutter_riverpod_calculator/constant/operators.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calculator_model.g.dart';

@riverpod
class CalculatorModel extends _$CalculatorModel {
  double result = 0.0;
  double temp = 0.0;
  CalculatorOperation operation = CalculatorOperation.none;

  TextEditingController editorController = TextEditingController(text: "0");

  @override
  Future<void> build() async {
    // The logic we previously had in our FutureProvider is now in the build method.
    return;
  }

  void addNumber(int n) {
    result = result * 10 + n;
    editorController.text = result.toString();
    ref.notifyListeners();
  }

  void removeNumber() {
    if (operation == CalculatorOperation.none) {
      result = 0.0;
    } else {
      result = result % 10;
    }

    editorController.text = result.toString();
    // notifyListeners();
    ref.notifyListeners();
  }

  void clearScreen() {
    result = 0.0;
    operation = CalculatorOperation.none;
    temp = 0.0;
    editorController.text = result.toString();
    // notifyListeners();
    ref.notifyListeners();
  }

  void setOperation(CalculatorOperation operation) {
    this.operation = operation;
    temp = result;
    result = 0.0;
    // notifyListeners();
    ref.notifyListeners();
  }

  void calculate() {
    switch (operation) {
      case CalculatorOperation.none:
        break;
      case CalculatorOperation.summation:
        result = temp + result;
        break;
      case CalculatorOperation.subtraction:
        result = temp - result;
        break;
      case CalculatorOperation.division:
        result = temp / result;
        break;
      case CalculatorOperation.multiplication:
        result = temp * result;
        break;
    }
    operation = CalculatorOperation.none;
    temp = 0.0;
    editorController.text = result.toString();
    // notifyListeners();
    ref.notifyListeners();
  }
}
