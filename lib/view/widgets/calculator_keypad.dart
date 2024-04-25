import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_calculator/view_models/calculator_model.dart';

import '../../constant/operators.dart';
import 'action_button.dart';
import 'number_button.dart';

class CalculatorKeypad extends StatelessWidget {
  const CalculatorKeypad({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: keypadContent(context),
    );
  }

  List<Widget> keypadContent(BuildContext context) {
    List<Widget> lst = [];
    lst.add(const NumberButton(7));
    lst.add(const NumberButton(8));
    lst.add(const NumberButton(9));
    lst.add(const ActionButton(
        CalculatorOperation.subtraction, Icon(Icons.remove)));
    lst.add(const NumberButton(4));
    lst.add(const NumberButton(5));
    lst.add(const NumberButton(6));
    lst.add(const ActionButton(CalculatorOperation.summation, Icon(Icons.add)));
    lst.add(const NumberButton(1));
    lst.add(const NumberButton(2));
    lst.add(const NumberButton(3));
    lst.add(const ActionButton(
        CalculatorOperation.multiplication, Icon(Icons.close)));
    lst.add(Consumer(
      builder: (context, ref, child) => ElevatedButton(
          onPressed: () {
            ref.read(calculatorModelProvider.notifier).removeNumber();
          },
          child: const Icon(Icons.backspace)),
    ));
    lst.add(const NumberButton(0));
    lst.add(Consumer(
      builder: (context, ref, child) => ElevatedButton(
          onPressed: () {
            ref.read(calculatorModelProvider.notifier).calculate();
          },
          child: const Text("=")),
    ));
    lst.add(const ActionButton(
        CalculatorOperation.division, Icon(Icons.percent_rounded)));
    return lst;
  }
}
