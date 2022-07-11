import 'package:calculator_bmi/calculator_brain.dart';
import 'package:calculator_bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Iconcontent.dart';
import 'ReusableCard.dart';
import 'button_button.dart';
import 'RoundIconButtom.dart';

const bottomcontenarHeight = 80.0;
const activecardcolor = Color(0xFF1D1E33);
const bottoncardcolor = Color(0xFFEB1555);
const inactivecolor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malacolor = inactivecolor;
  Color famalecolor = activecardcolor;
  int height = 180;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Color(0x0FF0A0E21),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malacolor = inactivecolor;
                        famalecolor = activecardcolor;
                      });
                    },
                    child: ReusableCard(
                      colour: malacolor,
                      cardchil: IconContenar(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALA',
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malacolor = activecardcolor;
                        famalecolor = inactivecolor;
                      });
                    },
                    child: ReusableCard(
                      colour: famalecolor,
                      cardchil: IconContenar(
                        icon: FontAwesomeIcons.venus,
                        label: 'FAMALE',
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: activecardcolor,
              cardchil: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newvale) {
                        setState(() {
                          height = newvale.toInt();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                    ),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                          colour: activecardcolor,
                          cardchil: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'WEGHT',
                                style: TextStyle(
                                    fontSize: 18.0, color: Color(0xFF8D8E98)),
                              ),
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RounIconBottom(
                                    icon: FontAwesomeIcons.plus,
                                    onPressedd: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RounIconBottom(
                                    icon: FontAwesomeIcons.minus,
                                    onPressedd: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ))),
                  Expanded(
                      child: ReusableCard(
                    colour: activecardcolor,
                    cardchil: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xFF8D8E98)),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RounIconBottom(
                              icon: FontAwesomeIcons.plus,
                              onPressedd: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RounIconBottom(
                              icon: FontAwesomeIcons.minus,
                              onPressedd: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            BottomBottom(
              bottomtitle: 'Calculate ',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          interpretation: calc.getInterpretation(),
                              resultText: calc.getResult(),

                            )));
              },
            ),
          ],
        ));
  }
}
