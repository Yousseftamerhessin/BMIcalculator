import 'package:fit_index/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff1A1F38),
        ),
      ),
      home: CalculatorScreen(),
    );
  }
}
