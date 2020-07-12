import 'package:flutter/material.dart';
import 'input_area.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2F3445),
        scaffoldBackgroundColor: Color(0xFF2F3445),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              //Placeholder(),
              InputArea(),
            ],
          ),
        ),
      ),
    );
  }
}
