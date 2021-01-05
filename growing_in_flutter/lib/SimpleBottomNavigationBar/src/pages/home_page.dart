//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/SimpleBottomNavigationBar/src/pages/one_page.dart';
import 'package:growing_in_flutter/SimpleBottomNavigationBar/src/pages/two_page.dart';
import 'package:growing_in_flutter/SimpleBottomNavigationBar/src/pages/three_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0: 
        return OnePage();
        break;
      case 1:
        return TwoPage();
        break;
      case 2:
        return ThreePage();
        break;
      default:
        return OnePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Bottom Navigation Bar'),
        centerTitle: true,
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Circle'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
            label: 'Location'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos),
            label: 'Photos'
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}