import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
const chineseBlack = const Color(0xFF0A0E21);
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: chineseBlack,
          scaffoldBackgroundColor: chineseBlack,
          brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results_page': (context) => ResultsPage(),
      },
    );
  }
}


