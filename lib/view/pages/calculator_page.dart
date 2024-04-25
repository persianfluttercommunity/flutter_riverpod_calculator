import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_models/calculator_model.dart';
import '../widgets/calculator_keypad.dart';

/// all of project is in this Stateless Widget
class CalculatorPage extends ConsumerWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400, maxHeight: 600),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        readOnly: true,
                        controller: ref
                            .watch(calculatorModelProvider.notifier)
                            .editorController,
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            ref
                                .read(calculatorModelProvider.notifier)
                                .clearScreen();
                          },
                          child: const Text("Clear")),
                    ],
                  )),
              const Expanded(child: CalculatorKeypad())
            ],
          ),
        ),
      ),
    );
  }
}
