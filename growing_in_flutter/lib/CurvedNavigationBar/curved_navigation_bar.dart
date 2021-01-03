//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:growing_in_flutter/CurvedNavigationBar/src/pages/home_page.dart';

class CurvedNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved Navigation Bar',
      home: HomePage(),
    );
  }
}