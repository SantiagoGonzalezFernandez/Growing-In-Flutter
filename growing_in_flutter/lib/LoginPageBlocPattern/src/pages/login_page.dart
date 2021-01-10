//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/LoginPageBlocPattern/src/blocs/login_page_bloc.dart';
//Pages
import 'package:growing_in_flutter/LoginPageBlocPattern/src/pages/home_page.dart';

class LoginPage extends StatelessWidget {

  changeThePage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  }

  @override
  Widget build(BuildContext context) {

    final loginPageBloc = LoginPageBloc();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bloc Pattern'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<String>(
                stream: loginPageBloc.emailStream,
                builder: (context, snapshot) => TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter email',
                    labelText: 'Email',
                    errorText: snapshot.error
                  ),
                  onChanged: loginPageBloc.emailChanged,
                ),
              ),
              SizedBox(height: 20.0),
              StreamBuilder<String>(
                stream: loginPageBloc.passwordStream,
                builder: (context, snapshot) => TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter password',
                    labelText: 'Password',
                    errorText: snapshot.error
                  ),
                  onChanged: loginPageBloc.passwordChanged,
                ),
              ),
              SizedBox(height: 20.0),
              StreamBuilder<bool>(
                stream: loginPageBloc.submitCheck,
                builder: (context, snapshot) => RaisedButton(
                  color: Colors.tealAccent,
                  child: Text('Submit'),
                  onPressed: snapshot.hasData ? () => changeThePage(context) :null,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}