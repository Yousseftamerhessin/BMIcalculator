import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final double result;

  const ResultsScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    String resultText;
    Color resultColor;

    if (result < 18.5) {
      resultText = 'Underweight';
      resultColor = Colors.yellow;
    } else if (result < 25) {
      resultText = 'Normal';
      resultColor = Colors.green;
    } else {
      resultText = 'Overweight';
      resultColor = Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI: ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              resultText,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: resultColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
