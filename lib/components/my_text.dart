import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
    this.text, {
    super.key,
    required this.fontSize,
    this.color = Colors.black,
    this.maxLines = 7,
  });

  final String text;
  final double fontSize;
  final Color color;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize),
      textAlign: TextAlign.right,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}

class MyMainText extends StatelessWidget {
  const MyMainText(
    this.text, {
    super.key,
    required this.fontSize,
    this.color = Colors.black,
    this.maxLines = 7,
    required this.fontWight,
  });

  final String text;
  final double fontSize;
  final Color color;
  final int maxLines;
  final FontWeight fontWight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: fontWight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
