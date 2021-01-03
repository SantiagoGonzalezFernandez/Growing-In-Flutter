//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/HiddenDrawerMenu/src/pages/home_page.dart';

class HiddenDrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hidden Drawer Menu',
      home: HomePage()
    );
  }
}