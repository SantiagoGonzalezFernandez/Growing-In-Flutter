//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/Calculator/src/pages/home_page.dart';

class Calculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caluclator',
      home: HomePage(),
    );
  }
}