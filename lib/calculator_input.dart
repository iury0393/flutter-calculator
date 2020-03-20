import 'package:flutter/material.dart';
import 'calculator_lines.dart';

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
          CalculatorLines(
            btn1: 'C',
            btn2: '+/-',
            btn3: '%',
            btn4: '÷',
            color1: Color(0xFFC9CACB),
            color2: Color(0xFFF28E16),
          ),
          CalculatorLines(
            btn1: '7',
            btn2: '8',
            btn3: '9',
            btn4: 'X',
            color1: Color(0xFFD4D5D7),
            color2: Color(0xFFF28E16),
          ),
          CalculatorLines(
            btn1: '4',
            btn2: '5',
            btn3: '6',
            btn4: '-',
            color1: Color(0xFFD4D5D7),
            color2: Color(0xFFF28E16),
          ),
          CalculatorLines(
            btn1: '1',
            btn2: '2',
            btn3: '3',
            btn4: '+',
            color1: Color(0xFFD4D5D7),
            color2: Color(0xFFF28E16),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    ),
                    margin: margin,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4D5D7),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      ',',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    ),
                    margin: margin,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4D5D7),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '=',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    margin: margin,
                    decoration: BoxDecoration(
                      color: Color(0xFFF28E16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
