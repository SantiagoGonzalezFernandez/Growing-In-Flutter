//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class CenteredView extends StatelessWidget {

  final Widget child;

  CenteredView({
    Key key, 
    this.child
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 70.0,
        vertical: 60.0
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}