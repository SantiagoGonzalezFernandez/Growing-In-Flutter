//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }
}