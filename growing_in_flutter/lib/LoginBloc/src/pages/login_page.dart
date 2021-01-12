//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/LoginBloc/src/blocs/login_bloc/login_bloc.dart';
//Pages
import 'package:growing_in_flutter/LoginBloc/src/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController    = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Bloc'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if(state is ErrorState){
              _showError(context, state.message);
            }
            if(state is LoggedInState){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )
              );
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {  
              return Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email'
                      ),
                      controller: emailController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password'
                      ),
                      obscureText: true,
                      controller: passwordController,
                    ),
                    if(state is LoginInState)
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ) 
                    else 
                      RaisedButton(
                        child: Text('Login'),
                        onPressed: _doLogin,
                      )
                  ],
                ),
              );
            },
          ),
        ),
      )
    );
  }

  void _doLogin() {
    BlocProvider.of<LoginBloc>(context).add(
      DoLoginEvent(
        email: emailController.text,
        password: passwordController.text
      )
    );
  }

  void _showError(BuildContext context, String message){
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      )
    );
  }
}