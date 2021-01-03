//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

//Imports that are mine

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Curved Navigation Bar',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Curved Navigation Bar',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50.0,
        animationDuration: Duration(
          milliseconds: 200
        ),
        animationCurve: Curves.bounceInOut,
        index: 2,
        items: [
          Icon(Icons.verified_user, size: 20.0, color: Colors.black),
          Icon(Icons.add, size: 20.0, color: Colors.black),
          Icon(Icons.list, size: 20.0, color: Colors.black),
          Icon(Icons.favorite, size: 20.0, color: Colors.black),
          Icon(Icons.exit_to_app, size: 20.0, color: Colors.black),
        ],
        onTap: (value) {
          debugPrint('Value: $value');
        },
      ),
    );
  }
}