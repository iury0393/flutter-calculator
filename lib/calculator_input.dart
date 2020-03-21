import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'build_button.dart';
import 'constants.dart';

class CalculatorInput extends StatefulWidget {
  @override
  _CalculatorInputState createState() => _CalculatorInputState();
}

class _CalculatorInputState extends State<CalculatorInput> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

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
                        BuildButton(
                          flex: 1,
                          buttonText: 'C',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '+/-',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '%',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
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
                        BuildButton(
                          flex: 1,
                          buttonText: '7',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '8',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '9',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
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
                        BuildButton(
                          flex: 1,
                          buttonText: '4',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '5',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '6',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
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
                        BuildButton(
                          flex: 1,
                          buttonText: '1',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '2',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: '3',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
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
                        BuildButton(
                          flex: 2,
                          buttonText: '0',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
                          flex: 1,
                          buttonText: ',',
                          buttonColor: kColorPrincipal,
                          textColor: kTextColorPrincipal,
                        ),
                        BuildButton(
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
