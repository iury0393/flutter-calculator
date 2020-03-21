import 'package:flutter/material.dart';
import 'constants.dart';

class CalculatorLines extends StatelessWidget {
  CalculatorLines(
      {@required this.btn1,
      @required this.btn2,
      @required this.btn3,
      @required this.btn4,
      this.color1,
      this.color2,
      this.onPressFirst,
      this.onPressSecond,
      this.onPressThird,
      this.onPressFourth});

  final String btn1, btn2, btn3, btn4;
  final Color color1, color2;
  final Function onPressFirst, onPressSecond, onPressThird, onPressFourth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: onPressFirst,
              child: Container(
                color: color1,
                child: Text(btn1,
                    textAlign: kKeyboardTextAlign, style: kKeyboardTextStyle),
                margin: kMargin,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPressSecond,
              child: Container(
                color: color1,
                child: Text(btn2,
                    textAlign: kKeyboardTextAlign, style: kKeyboardTextStyle),
                margin: kMargin,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPressThird,
              child: Container(
                color: color1,
                child: Text(btn3,
                    textAlign: kKeyboardTextAlign, style: kKeyboardTextStyle),
                margin: kMargin,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPressFourth,
              child: Container(
                color: color2,
                child: Text(
                  btn4,
                  textAlign: kKeyboardTextAlign,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
                margin: kMargin,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
