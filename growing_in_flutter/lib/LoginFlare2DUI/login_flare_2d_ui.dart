//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/LoginFlare2DUI/src/pages/login_page.dart';

class LoginFlare2DUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Flare 2D UI',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LoginPage(),
    );
  }
}