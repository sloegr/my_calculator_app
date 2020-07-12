import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[MathsButton(icon: FontAwesomeIcons.plus)],
      ),
    );
  }
}

class MathsButton extends StatelessWidget {
  MathsButton({this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      //fillColor: Color(0xFF2F3445),
    );
  }
}

// MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
//         MathsButton(icon: FontAwesomeIcons.minus),
