import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_calculator/view_models/calculator_model.dart';

import '../../constant/operators.dart';

class ActionButton extends ConsumerWidget {
  const ActionButton(this.operation, this.icon, {super.key});
  final CalculatorOperation operation;
  final Widget icon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {
          ref.read(calculatorModelProvider.notifier).setOperation(operation);
        },
        child: icon);
  }
}
