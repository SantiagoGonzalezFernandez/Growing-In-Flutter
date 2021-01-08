//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Imports that are mine
//Hidden Drawer Menu
import 'package:growing_in_flutter/HiddenDrawerMenu/hidden_drawer_menu.dart';
import 'package:growing_in_flutter/MeditateUI/meditate_ui.dart';
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
import 'package:growing_in_flutter/TicTacToe/tic_tac_toe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  int numberApp = 12;
  // Tic Tac Toe
  if(numberApp == 12){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  runApp(MyApp(numberApp: numberApp)); 
}
 
class MyApp extends StatefulWidget {
  final int numberApp;

  MyApp({
    @required this.numberApp
  });

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Widget materialApp;

  @override
  Widget build(BuildContext context) {
    if(widget.numberApp == 0){
      materialApp = HiddenDrawerMenu();
    } else if (widget.numberApp == 1) {
      materialApp = ThemeProvider();
    } else if (widget.numberApp == 2) {
      materialApp = CurvedNavigationBar();
    } else if (widget.numberApp == 3) {
      materialApp = DownloadButton();
    } else if (widget.numberApp == 4) {
      materialApp = FoldableNavigationSidebar();
    } else if (widget.numberApp == 5) {
      materialApp = SpinCircleBottomNavigationBar();
    } else if (widget.numberApp == 6) {
      materialApp = NeumorphicButtons();
    } else if (widget.numberApp == 7) {
      materialApp = SimpleBottomNavigationBar();
    } else if (widget.numberApp == 8) {
      materialApp = PlantUI();
    } else if (widget.numberApp == 9) {
      materialApp = AnimateDo();
    } else if (widget.numberApp == 10) {
      materialApp = AnimatedLoginUI();
    } else if (widget.numberApp == 11) {
      materialApp = MeditateUI();
    } else if (widget.numberApp == 12) {
      materialApp = TicTacToe();
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
      debugShowCheckedModeBanner: false,
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