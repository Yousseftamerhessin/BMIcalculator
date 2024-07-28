import 'package:bmi_calculator/screens/calculatorScreen.dart';
import 'package:flutter/material.dart';

class resultsScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  resultsScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E21),
        leading: IconButton(
          icon: const Icon(
            Icons.navigate_before,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => calculatorScreen()),
            );
          },
        ),
        title: const Text(
          'Your Result :',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xff0A0E21),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            color: Color(0xff1A1F38),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gender: ${isMale ? "Male" : "Female"}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Result: ${result.round()}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Age: $age",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
