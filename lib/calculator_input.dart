import 'package:flutter/material.dart';

class CalculatorInput extends StatefulWidget {
  @override
  _CalculatorInputState createState() => _CalculatorInputState();
}

class _CalculatorInputState extends State<CalculatorInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text('A TELA VAI AQUI'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text('C'),
              ),
              Expanded(
                child: Text('+/-'),
              ),
              Expanded(
                child: Text('%'),
              ),
              Expanded(
                child: Text('÷'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
