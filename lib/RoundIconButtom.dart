import 'package:flutter/material.dart';
class RounIconBottom extends StatelessWidget {
  RounIconBottom({required this.icon, required this.onPressedd});
  final IconData icon;
  final VoidCallback onPressedd;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressedd,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
