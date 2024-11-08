import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/CalculatorProvider.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  const CalculatorButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          calculator.onButtonPressed(label);
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(80, 80),
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Легке заокруглення
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}