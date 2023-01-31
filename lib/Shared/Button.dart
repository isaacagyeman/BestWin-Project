import 'dart:core';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.text,
      required this.color,
      required this.onPress,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.fontFamily});
  String text;
  Color color;
  final Function()? onPress;
  double? fontSize;
  FontWeight? fontWeight;
  Color? fontColor;
  String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size.fromHeight(50.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
      onPressed: onPress,
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: fontColor, fontFamily: fontFamily)),
    );
  }
}
