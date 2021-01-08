//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/AnimatedRouteTransitions/src/pages/first_page.dart';

class AnimatedRouteTransitions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Route Transitions',
      home: FirstPage(),
    );
  }
}