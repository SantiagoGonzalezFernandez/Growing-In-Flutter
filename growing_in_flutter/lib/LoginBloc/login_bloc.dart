//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/LoginBloc/src/pages/login_page.dart';
//Blocs
import 'package:growing_in_flutter/LoginBloc/src/blocs/login_bloc/login_bloc.dart' as bloc;
//Logic
import 'package:growing_in_flutter/LoginBloc/src/login_logic.dart';

class LoginBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Bloc',
      home: BlocProvider(
        create: (context) => bloc.LoginBloc(
          loginLogic: SimpleLoginLogic()
        ),
        child: LoginPage(),
      )
    );
  }
}