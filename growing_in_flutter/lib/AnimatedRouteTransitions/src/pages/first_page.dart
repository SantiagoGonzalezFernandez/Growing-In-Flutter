//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/AnimatedRouteTransitions/src/animations/bouncy_page_route.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/AnimatedRouteTransitions/src/pages/second_page.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: Text(
            'Second Page',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          onPressed: () {
            Navigator.push(
              context, 
              BouncyPageRoute(
                child: SecondPage()
              )
            );
          },
        ),
      ),
    );
  }
}