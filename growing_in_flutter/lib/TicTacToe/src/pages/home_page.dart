//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Imports that are mine

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool ohTurn = true; //The firt player is O!
  List<String> displayExOh = ['','','','','','','','',''];
  TextStyle myTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 30.0
  );
  int ohScore = 0;
  int exScore = 0;
  int filledBoxes = 0;

  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Player O',
                          style: myNewFontWhite,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          '$ohScore',
                          style: myNewFontWhite,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Player X',
                          style: myNewFontWhite,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          '$exScore',
                          style: myNewFontWhite,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
              ), 
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _tapped(index),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[700]
                      )
                    ),
                    child: Center(
                      child: Text(
                        displayExOh[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0
                        ),
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'TIC TAC TOE',
                      style: myNewFontWhite,
                    ),
                    SizedBox(height: 60.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  void _tapped(int index) {
    setState(() {
      if(ohTurn && displayExOh[index] == ''){
        displayExOh[index] = 'o';
        ohTurn = !ohTurn;
        filledBoxes++;
      } else if(!ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'x';
        ohTurn = !ohTurn;
        filledBoxes++;
      }
      _checkWinner();
    });
  }

  void _checkWinner() {
    // checks 1st row
    if (displayExOh[0] == displayExOh[1] && displayExOh[0] == displayExOh[2] && displayExOh[0] != '') {
      _showWinDialog(displayExOh[0]);
    }

    // checks 2nd row
    if (displayExOh[3] == displayExOh[4] && displayExOh[3] == displayExOh[5] && displayExOh[3] != '') {
      _showWinDialog(displayExOh[3]);
    }

    // checks 3rd row
    if (displayExOh[6] == displayExOh[7] && displayExOh[6] == displayExOh[8] && displayExOh[6] != '') {
      _showWinDialog(displayExOh[6]);
    }

    // checks 1st column
    if (displayExOh[0] == displayExOh[3] && displayExOh[0] == displayExOh[6] && displayExOh[0] != '') {
      _showWinDialog(displayExOh[0]);
    }

    // checks 2nd column
    if (displayExOh[1] == displayExOh[4] && displayExOh[1] == displayExOh[7] && displayExOh[1] != '') {
      _showWinDialog(displayExOh[1]);
    }

    // checks 3rd column
    if (displayExOh[2] == displayExOh[5] && displayExOh[2] == displayExOh[8] && displayExOh[2] != '') {
      _showWinDialog(displayExOh[2]);
    }

    // checks diagonal
    if (displayExOh[6] == displayExOh[4] && displayExOh[6] == displayExOh[2] && displayExOh[6] != '') {
      _showWinDialog(displayExOh[6]);
    }

    // checks diagonal
    if (displayExOh[0] == displayExOh[4] && displayExOh[0] == displayExOh[8] && displayExOh[0] != '') {
      _showWinDialog(displayExOh[0]);
    }

    else if(filledBoxes == 9){
      _showDrawDialog();
    }
  }

  void _showWinDialog(String winner) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text('WINNER IS: $winner'.toUpperCase()),
        actions: [
          FlatButton(
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            }, 
            child: Text(
              'Play Again!'
            ),
          )
        ],
      ) 
    );
    if(winner == 'o') {
      ohScore++;
    } else if(winner == 'x') {
      exScore++;
    }
  } 

  void _showDrawDialog(){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text('DRAW'.toUpperCase()),
        actions: [
          FlatButton(
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            }, 
            child: Text(
              'Play Again!'
            ),
          )
        ],
      ) 
    );
  }

  void _clearBoard() {
    for (int i = 0; i < 9; i++) {
      setState(() {
        displayExOh[i] = '';
      });
    }
    filledBoxes = 0;
  }
}