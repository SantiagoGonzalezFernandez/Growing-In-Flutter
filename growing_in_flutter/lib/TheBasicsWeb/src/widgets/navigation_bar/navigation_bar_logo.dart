//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class NavigationBarLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      width: 150.0,
      child: Image.asset('TheBasicsWeb/assets/images/logo.png'),
    );
  }
}