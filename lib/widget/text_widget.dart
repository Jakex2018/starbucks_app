import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key, required this.title, required this.fontSize, required this.fontWeight, required this.color,
  });
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          decoration: TextDecoration.none,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}