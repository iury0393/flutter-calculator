import 'package:calculatorapp/constants.dart';
import 'package:flutter/material.dart';
import 'calculator_lines.dart';
import 'bottom_calculator_lines.dart';

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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0, top: 150.0),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 100.0,
              ),
            ),
          ),
          CalculatorLines(
            btn1: 'C',
            btn2: '+/-',
            btn3: '%',
            btn4: '÷',
            color1: kColorFirst,
            color2: kColorSecond,
          ),
          CalculatorLines(
            btn1: '7',
            btn2: '8',
            btn3: '9',
            btn4: 'X',
            color1: kColorFirst,
            color2: kColorSecond,
          ),
          CalculatorLines(
            btn1: '4',
            btn2: '5',
            btn3: '6',
            btn4: '-',
            color1: kColorFirst,
            color2: kColorSecond,
          ),
          CalculatorLines(
            btn1: '1',
            btn2: '2',
            btn3: '3',
            btn4: '+',
            color1: kColorFirst,
            color2: kColorSecond,
          ),
          BottomCalculatorLines(
            btn1: '0',
            btn2: ',',
            btn3: '=',
            color1: kColorFirst,
            color2: kColorSecond,
          ),
        ],
      ),
    );
  }
}
