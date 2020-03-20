import 'package:flutter/material.dart';

const EdgeInsets margin = EdgeInsets.all(1.0);

class CalculatorLines extends StatelessWidget {
  CalculatorLines(
      {@required this.btn1,
      @required this.btn2,
      @required this.btn3,
      this.btn4,
      this.color1,
      this.color2});

  final String btn1, btn2, btn3, btn4;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: color1,
              child: Text(
                btn1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                ),
              ),
              margin: margin,
            ),
          ),
          Expanded(
            child: Container(
              color: color1,
              child: Text(
                btn2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                ),
              ),
              margin: margin,
            ),
          ),
          Expanded(
            child: Container(
              color: color1,
              child: Text(
                btn3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                ),
              ),
              margin: margin,
            ),
          ),
          Expanded(
            child: Container(
              color: color2,
              child: Text(
                btn4,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              margin: margin,
            ),
          ),
        ],
      ),
    );
  }
}
