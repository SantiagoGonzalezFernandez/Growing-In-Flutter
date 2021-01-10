//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/LoginPageBlocPattern/src/pages/login_page.dart';

class LoginPageBlocPattern extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page Bloc Pattern',
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
    );
  }
}