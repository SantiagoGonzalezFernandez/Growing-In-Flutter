//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/MeditateUI/src/pages/home_page.dart';
//Constants
import 'package:growing_in_flutter/MeditateUI/src/constants.dart';

class MeditateUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditate UI',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor)
      ),
      home: HomePage(),
    );
  }
}