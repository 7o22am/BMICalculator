import 'package:flutter/material.dart';

import 'input_page.dart';

class BottomBottom extends StatelessWidget {
  BottomBottom({required this.bottomtitle, required this.onTap});
  final VoidCallback onTap;
  final String bottomtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(bottomtitle,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: bottomcontenarHeight,
        decoration: BoxDecoration(
          color: bottoncardcolor,
        ),
      ),
    );
  }
}
