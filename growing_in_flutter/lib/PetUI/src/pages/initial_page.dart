//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/PetUI/src/pages/drawer_page.dart';
import 'package:growing_in_flutter/PetUI/src/pages/home_page.dart';

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerPage(),
          HomePage(),
        ],
      )
    );
  }
}