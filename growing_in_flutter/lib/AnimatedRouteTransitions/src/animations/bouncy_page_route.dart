//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class BouncyPageRoute extends PageRouteBuilder {

  final Widget child;

  BouncyPageRoute({
    @required this.child
  }) : super(
    pageBuilder: (context, animation, secondaryAnimation) {
      return child;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {

      animation = CurvedAnimation(
        parent: animation,
        curve: Curves.elasticInOut
      );

      return ScaleTransition(
        scale: animation,
        child: child,
        alignment: Alignment.center,
      );
    },
    transitionDuration: Duration(seconds: 2),  
  );
}