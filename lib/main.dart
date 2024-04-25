import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constant/theme.dart';
import 'view/pages/calculator_page.dart';

// if you need access riverpod providers out of consumers you should use ProviderContainer
final container = ProviderContainer();

void main() {
  runApp(
    // if you want to use ProviderContainer should use UncontrolledProviderScope
    // and if not using ProviderContainer, can use ProviderScope.
    // in this case because we use ProviderContainer, we should use UncontrolledProviderScope
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Calculator',
      theme: theme,
      home: const CalculatorPage(),
    );
  }
}
