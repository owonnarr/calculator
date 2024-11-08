import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Calculator/Providers/CalculatorProvider.dart';
import 'Calculator/Screens/CalculatorScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CalculatorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}





