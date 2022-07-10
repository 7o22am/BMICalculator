import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Iconcontent.dart';
import 'ReusableCard.dart';

const bottomcontenarHeight = 80.0;
const activecardcolor = Color(0xFF1D1E33);
const bottoncardcolor = Color(0xFFEB1555);
const inactivecolor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malacolor =inactivecolor;
  Color famalecolor =activecardcolor;
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
                             malacolor =inactivecolor;
                             famalecolor =activecardcolor;
                          });
                           },
                        child: ReusableCard(
                    colour:  malacolor ,
                    cardchil: IconContenar( icon: FontAwesomeIcons.mars, label: 'MALA',),
                  ),
                      )),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                             malacolor =activecardcolor;
                             famalecolor =inactivecolor;
                          });
                        },
                        child: ReusableCard(
                    colour: famalecolor,
                    cardchil: IconContenar(icon: FontAwesomeIcons.venus, label: 'FAMALE',),
                  ),
                      )),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: activecardcolor,
              cardchil: IconContenar(icon: FontAwesomeIcons.venus, label: 'FAMEL',),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: activecardcolor, cardchil:  IconContenar(icon: FontAwesomeIcons.venus, label: 'FAMEL',),
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: activecardcolor, cardchil:  IconContenar(icon: FontAwesomeIcons.venus, label: 'FAMEL',),
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomcontenarHeight,
              decoration: BoxDecoration(
                  color: bottoncardcolor,
                  borderRadius: BorderRadius.circular(10.0)),
            )
          ],
        ));
  }
}

