//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Hidden Drawer Menu
import 'package:growing_in_flutter/HiddenDrawerMenu/hidden_drawer_menu.dart';
//Theme Provider
import 'package:growing_in_flutter/ThemeProvider/theme_provider.dart';
//Curved Navigation Bar
import 'package:growing_in_flutter/CurvedNavigationBar/curved_navigation_bar.dart';
//Download Button
import 'package:growing_in_flutter/DownloadButton/download_button.dart';
//Foldable Navigation Sidebar
import 'package:growing_in_flutter/FoldableNavigationSidebar/foldable_navigation_sidebar.dart';
//Spin Circle Bottom Navigation Bar
import 'package:growing_in_flutter/SpinCircleBottomNavigationBar/spin_circle_bottom_navigation_bar.dart';
//Neumorphic Buttons
import 'package:growing_in_flutter/NeumorphicButtons/neumorphic_buttons.dart';
//Simple Bottom Navigation Bar
import 'package:growing_in_flutter/SimpleBottomNavigationBar/simple_bottom_navigation_bar.dart';
//Plant UI
import 'package:growing_in_flutter/PlantUI/plant_ui.dart';
//Animate Do
import 'package:growing_in_flutter/AnimateDo/animate_do.dart';
//Animated Login UI
import 'package:growing_in_flutter/AnimatedLoginUI/animated_login_ui.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int numberApp = 10;
  Widget materialApp;

  @override
  Widget build(BuildContext context) {
    if(numberApp == 0){
      materialApp = HiddenDrawerMenu();
    } else if (numberApp == 1) {
      materialApp = ThemeProvider();
    } else if (numberApp == 2) {
      materialApp = CurvedNavigationBar();
    } else if (numberApp == 3) {
      materialApp = DownloadButton();
    } else if (numberApp == 4) {
      materialApp = FoldableNavigationSidebar();
    } else if (numberApp == 5) {
      materialApp = SpinCircleBottomNavigationBar();
    } else if (numberApp == 6) {
      materialApp = NeumorphicButtons();
    } else if (numberApp == 7) {
      materialApp = SimpleBottomNavigationBar();
    } else if (numberApp == 8) {
      materialApp = PlantUI();
    } else if (numberApp == 9) {
      materialApp = AnimateDo();
    } else if (numberApp == 10) {
      materialApp = AnimatedLoginUI();
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