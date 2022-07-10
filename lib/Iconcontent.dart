import 'package:flutter/material.dart';
class IconContenar extends StatelessWidget {
  IconContenar({required this.icon ,required this.label}) ;
  final IconData  icon ;
  final String label ;
  static const lableTextStyle =TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: lableTextStyle,
        )
      ],
    );
  }
}
