//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/NeumorphicButtons/src/pages/home_page.dart';

class NeumorphicButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic Buttons',
      home: HomePage(),
    );
  }
}