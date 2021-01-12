//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/LoginBloc/src/pages/login_page.dart';

class LoginBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Bloc',
      home: LoginPage(),
    );
  }
}