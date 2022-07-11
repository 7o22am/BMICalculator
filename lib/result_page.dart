import 'package:calculator_bmi/input_page.dart';
import 'package:flutter/material.dart';
import 'Iconcontent.dart';
import 'ReusableCard.dart';
import 'button_button.dart';
import 'calculator_brain.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.interpretation, required this.bmiResult, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0x0FF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(

              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Ruselt',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activecardcolor,
              cardchil: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                        color: Color(0xFF24D872),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomBottom(
            bottomtitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
