//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

//Imports that are mine

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String password = 'admin';

  String animationType = 'idle';

  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    passwordFocusNode.addListener(() {
      if(passwordFocusNode.hasFocus){
        setState(() {
          animationType = 'test';
        });
      }else{
        setState(() {
          animationType = 'idle';
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(38, 50, 56, 1.0),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: Container(
                height: 300.0,
                width: 300,
                child: CircleAvatar(
                  child: ClipOval(
                    child: FlareActor(
                      'LoginFlare2DUI/assets/animations/teddy_test.flr',
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: animationType,
                    ),
                  ),
                  backgroundColor: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'User Name',
                      contentPadding: EdgeInsets.all(20.0)
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(20.0)
                    ),
                    controller: passwordController,
                    focusNode: passwordFocusNode
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              padding: EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                color: Colors.pink,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                onPressed: () {
                  if(passwordController.text.compareTo(password) == 0){
                    setState(() {
                      animationType = 'success';
                    });
                  }else{
                    setState(() {
                      animationType = 'fail';
                    });
                  }
                },
              ),
            )
          ],
        ),
      )
    );
  }
}