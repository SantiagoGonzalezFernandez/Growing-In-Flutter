//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class NavigationBarItem extends StatelessWidget {

  final String title;

  NavigationBarItem({
    Key key, 
    this.title
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0
      ),
    );
  }
}