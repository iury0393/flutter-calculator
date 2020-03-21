import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  BuildButton({this.flex, this.buttonText, this.buttonColor, this.textColor});

  int flex;
  String buttonText;
  Color buttonColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: buttonColor,
        child: OutlineButton(
          padding: EdgeInsets.all(24.0),
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
