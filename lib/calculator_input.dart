import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class CalculatorInput extends StatefulWidget {
  @override
  _CalculatorInputState createState() => _CalculatorInputState();
}

class _CalculatorInputState extends State<CalculatorInput> {
  String output = "0", _output = "0", operand = "";
  double num1 = 0.0, num2 = 0.0;

  buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "÷" ||
        buttonText == "×") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ",") {
      if (_output.contains(",")) {
        print("Já contém decimal");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "×") {
        _output = (num1 * num2).toString();
      }
      if (operand == "÷") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(
      {int flex, String buttonText, Color buttonColor, Color textColor}) {
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
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora',
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 200.0),
              padding: EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 12.0,
              ),
              child: Text(
                output,
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildButton(
                          flex: 1,
                          buttonText: 'C',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '+/-',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '%',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '÷',
                          buttonColor: kColorSecondary,
                          textColor: kTextColorSecondary,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildButton(
                          flex: 1,
                          buttonText: '7',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '8',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '9',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '×',
                          buttonColor: kColorSecondary,
                          textColor: kTextColorSecondary,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildButton(
                          flex: 1,
                          buttonText: '4',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '5',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '6',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '-',
                          buttonColor: kColorSecondary,
                          textColor: kTextColorSecondary,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildButton(
                          flex: 1,
                          buttonText: '1',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '2',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '3',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '+',
                          buttonColor: kColorSecondary,
                          textColor: kTextColorSecondary,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildButton(
                          flex: 2,
                          buttonText: '0',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: ',',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        buildButton(
                          flex: 1,
                          buttonText: '=',
                          buttonColor: kColorSecondary,
                          textColor: kTextColorSecondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
