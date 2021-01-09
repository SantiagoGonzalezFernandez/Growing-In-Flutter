//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/Calculator/src/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String userQuestion = '';
  String userAnswer   = '';

  final customTextStyle = TextStyle(
    fontSize: 30.0,
    color: Colors.deepPurple[900]
  );

  final List<String> buttons = [
    'C', 'DEL', '%', '/',
    '9', '8',   '7', 'x',
    '6', '5',   '4', '-',
    '3', '2',   '1', '+',
    '0', '.', 'ANS', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userQuestion,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userAnswer,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    )
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
                    crossAxisCount: 4
                  ),
                  itemBuilder: (context, index) {
                    if(index == 0) {
                      return CustomButton(
                        onTap: () {
                          setState(() {
                            userQuestion = '';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.green ,
                        textColor: Colors.white,
                      );
                    } else if(index == 1) {
                      return CustomButton(
                        onTap: () {
                          setState(() {
                            userQuestion = userQuestion.substring(0, userQuestion.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.red,
                        textColor: Colors.white,
                      );
                    } else if(index == buttons.length - 1) {
                      return CustomButton(
                        onTap: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                      );
                    } else {
                      return CustomButton(
                        buttonText: buttons[index],
                        color: isOperator(buttons[index]) ? Colors.deepPurple : Colors.deepPurple[50],
                        textColor: isOperator(buttons[index]) ? Colors.white : Colors.deepPurple,
                        onTap: () {
                          setState(() {
                            userQuestion += buttons[index];
                          });
                        },
                      );
                    }
                  },
                )
              )  
            ),
          ],
        ),
      )
    );
  }

  bool isOperator(String x){
    if(x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=' ){
      return true;
    }
    return false;
  }

  void equalPressed() {

    String finalQuestion = userQuestion; 
    finalQuestion = finalQuestion.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalQuestion);
    ContextModel contextModel = ContextModel();
    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);
    userAnswer = evaluate.toString();
  }
}