import 'package:flutter/material.dart';
import 'calculator_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData.dark().copyWith(),
      home: CalculatorInput(),
    );
  }
}
