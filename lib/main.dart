import 'package:flutter/material.dart';
import 'buttons.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var userQuestion = '';
  var userAnswer = '';

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '='
  ];

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
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            userQuestion,
                            style: TextStyle(fontSize: 50),
                          )),
                      Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            userAnswer,
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return MyButtons(
                            buttonFunction: () {
                              setState(() {
                                userQuestion = '';
                              });
                            },
                            buttonText: buttons[index],
                            textColor: Colors.white,
                            color: Colors.green,
                          );
                        } else if (index == 1) {
                          return MyButtons(
                            buttonFunction: () {
                              setState(() {
                                userQuestion = userQuestion.substring(
                                    0, userQuestion.length - 1);
                              });
                            },
                            buttonText: buttons[index],
                            textColor: Colors.white,
                            color: Colors.red,
                          );
                        } else {
                          return MyButtons(
                            buttonFunction: () {
                              setState(() {
                                userQuestion += buttons[index];
                              });
                            },
                            buttonText: buttons[index],
                            textColor: isOperator(buttons[index])
                                ? Colors.black
                                : Colors.white,
                            color: isOperator(buttons[index])
                                ? Colors.amber
                                : null,
                          );
                        }
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool isOperator(String buttonText) {
  switch (buttonText) {
    case '%':
    case '/':
    case '+':
    case '*':
    case '-':
    case 'x':
    case '=':
      return true;

    default:
      return false;
  }
}
