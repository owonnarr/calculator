import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Elements/Button.dart';
import '../Providers/CalculatorProvider.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(
                calculator.calculationHandler.getOutputValue(),
                style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          _buildButtonRow(context, ['7', '8', '9', '/']),
          _buildButtonRow(context, ['4', '5', '6', '*']),
          _buildButtonRow(context, ['1', '2', '3', '-']),
          _buildButtonRow(context, ['C', '0', '=', '+']),
        ],
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context, List<String> labels) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: labels.map((label) {
        return CalculatorButton(label: label);
      }).toList(),
    );
  }
}