//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class BirdWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      child: Image.asset(
        'FlappyBird/assets/images/flappybird.png'
      ),
    );
  }
}