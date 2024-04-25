import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_calculator/main.dart';
import 'package:flutter_riverpod_calculator/view_models/calculator_model.dart';

class NumberButton extends ConsumerWidget {
  const NumberButton(this.number, {super.key});
  final int number;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {
          var r = container.read(calculatorModelProvider.notifier);
          r.addNumber(number);
          // or use :
          // ref.read(calculatorModelProvider.notifier).addNumber(number);
        },
        child: Text(number.toString()));
  }
}
