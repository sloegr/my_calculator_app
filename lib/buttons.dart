import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String buttonText;
  final buttonFunction;

  MyButtons({this.color, this.textColor, this.buttonText, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: textColor, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
