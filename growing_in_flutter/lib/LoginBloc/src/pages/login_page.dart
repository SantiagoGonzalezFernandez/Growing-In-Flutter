//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Bloc'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
                obscureText: true,
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {},
              )
            ],
          ),
        ),
      )
    );
  }
}