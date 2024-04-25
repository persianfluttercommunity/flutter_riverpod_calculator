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
          // for accessing provider we have two ways:
          // 1 : use Consumer or ConsumerWidget and access providers with ref param
          // 2 : use ProviderContainer and access providers with container object.
          container.read(calculatorModelProvider.notifier).addNumber(number);
          // or use :
          // ref.read(calculatorModelProvider.notifier).addNumber(number);
        },
        child: Text(number.toString()));
  }
}
