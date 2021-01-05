//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/SimpleBottomNavigationBar/src/pages/home_page.dart';

class SimpleBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Bottom Navigation Bar',
      home: HomePage(),
    );
  }
}