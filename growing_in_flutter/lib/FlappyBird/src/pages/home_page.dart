//Imports that are not mine
import 'dart:async';

import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/FlappyBird/src/widgets/bird_widget.dart';
import 'package:growing_in_flutter/FlappyBird/src/widgets/barrier_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static double birdYAxis = 0.0;
  double time = 0.0;
  double height = 0.0;
  double initialHeight = birdYAxis;
  bool gameHasStarted = false;
  bool gameStarted = false;

  static double barrierXOne = 1.8;
  double barrierXTwo   = barrierXOne + 1.5;
  double barrierXThree = barrierXOne + 3.0;

  int score = 0; 
  int highscore = 0; 

  @override
  // ignore: must_call_super
  void initState() {
    setState(() {
      birdYAxis = 0.0;
      time = 0.0;
      height = 0.0;
      initialHeight = birdYAxis;
      barrierXOne = 1.8;
      barrierXTwo = barrierXOne + 1.5;
      barrierXThree = barrierXOne + 3.0;
      gameStarted = false;
      score = 0;
    });
  }

  void jump() {
    setState(() {
      time = 0.0;
      initialHeight = birdYAxis;
    });
  }

  bool checkLose() {
    if(barrierXOne < 0.2 && barrierXOne > -0.2) {
      if(birdYAxis < -0.3 || birdYAxis > 0.7) {
        return true;
      }
    }
    if(barrierXTwo < 0.2 && barrierXTwo > -0.2) {
      if(birdYAxis < -0.8 || birdYAxis > 0.4) {
        return true;
      }
    }
    if(barrierXThree < 0.2 && barrierXThree > -0.2) {
      if(birdYAxis < -0.4 || birdYAxis > 0.7) {
        return true;
      }
    }
    return false;
  }

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(
      Duration(milliseconds: 60),
      (timer) {
        time += 0.05;
        height = -4.9 * time * time + 2.8 * time;
        setState(() {
          birdYAxis = initialHeight - height;
          if(barrierXOne < -2.0) {
            score++;
            barrierXOne += 4.5;
          } else {
            barrierXOne -= 0.04;
          }
          if(barrierXTwo < -2.0) {
            score++;
            barrierXTwo += 4.5;
          } else {
            barrierXTwo -= 0.04;
          }
          if(barrierXThree < -2.0) {
            score++;
            barrierXThree += 4.5;
          } else {
            barrierXThree -= 0.04;
          }
        });
        if(birdYAxis > 1.3 || checkLose()) {
          timer.cancel();
          _showDialog();
        }
      }
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.brown,
          title: Text(
            'GAME OVER',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Score: ' + score.toString(),
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            FlatButton(
              child: Text(
                'PLAY AGAIN',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if(score > highscore) {
                  highscore = score;
                }
                initState();
                setState(() {
                  gameHasStarted = false;
                });
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(gameHasStarted) {
          jump();
        } else {
          startGame();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  AnimatedContainer(
                    alignment: Alignment(0.0,birdYAxis),
                    duration: Duration(milliseconds: 0),
                    color: Colors.blue,
                    child: BirdWidget(),
                  ),
                  Container(
                    alignment: Alignment(0.0,-0.3),
                    child: !gameHasStarted ? Text(
                      'T A P  T O  P L A Y',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ) : Text(''),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXOne, 1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 200.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXTwo, 1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 300.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXThree, 1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 100.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXOne, -1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 150.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXTwo, -1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 100.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXThree, -1.1),
                    duration: Duration(milliseconds: 0),
                    child: BarrierWidget(
                      size: 200.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 15.0,
              color: Colors.green,
            ),
            Expanded(
              child: Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SCORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          score.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BEST',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          highscore.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}