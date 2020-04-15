import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  TextCustom({
    @required this.text,
    this.color = Colors.white
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, color: this.color),
      textDirection: TextDirection.ltr
    );
  }
}
