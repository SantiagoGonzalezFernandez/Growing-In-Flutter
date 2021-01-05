//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/NeumorphicButtons/src/widgets/neumorphic_button.dart';
import 'package:growing_in_flutter/NeumorphicButtons/src/widgets/neumorphic_button_tapped.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  IconData icon1 = Icons.home;
  IconData icon2 = Icons.settings;
  IconData icon3 = Icons.favorite;
  IconData icon4 = Icons.message;

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }
  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }
  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }
  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: buttonPressed1 ? NeumorphicButtonTapped(icon: icon1) : NeumorphicButton(icon: icon1),
                      onTap: _letsPress1,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: buttonPressed2 ? NeumorphicButtonTapped(icon: icon2) : NeumorphicButton(icon: icon2),
                      onTap: _letsPress2,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: buttonPressed3 ? NeumorphicButtonTapped(icon: icon3) : NeumorphicButton(icon: icon3),
                      onTap: _letsPress3,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: buttonPressed4 ? NeumorphicButtonTapped(icon: icon4) : NeumorphicButton(icon: icon4),
                      onTap: _letsPress4,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}