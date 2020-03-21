import 'package:flutter/material.dart';
import 'constants.dart';

class BottomCalculatorLines extends StatelessWidget {
  BottomCalculatorLines(
      {@required this.btn1,
      @required this.btn2,
      @required this.btn3,
      this.color1,
      this.color2,
      this.onPressFirst,
      this.onPressSecond,
      this.onPressThird});

  final String btn1, btn2, btn3;
  final Color color1, color2;
  final Function onPressFirst, onPressSecond, onPressThird;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: onPressFirst,
              child: Container(
                color: color1,
                margin: kMargin,
                child: Text(
                  btn1,
                  textAlign: kKeyboardTextAlign,
                  style: kKeyboardTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPressSecond,
              child: Container(
                color: color1,
                margin: kMargin,
                child: Text(
                  btn2,
                  textAlign: kKeyboardTextAlign,
                  style: kKeyboardTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPressThird,
              child: Container(
                color: color2,
                margin: kMargin,
                child: Text(
                  btn3,
                  textAlign: kKeyboardTextAlign,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
