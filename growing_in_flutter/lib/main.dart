//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Hidden Drawer Menu
import 'package:growing_in_flutter/HiddenDrawerMenu/hidden_drawer_menu.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int numberApp = 0;
  Widget materialApp;

  @override
  Widget build(BuildContext context) {
    if(numberApp == 0){
      materialApp = HiddenDrawerMenu();
    } else {
      materialApp = NoAppSelected();
    }
    return materialApp;
  }
}

class NoAppSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No App Selected',
      home: Center(
        child: Text(
          'No App Selected',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}