//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
//Meditate UI
import 'package:growing_in_flutter/MeditateUI/meditate_ui.dart';
//Tic Tac Toe
import 'package:growing_in_flutter/TicTacToe/tic_tac_toe.dart';
//Animated Route Transitions
import 'package:growing_in_flutter/AnimatedRouteTransitions/animated_route_transitions.dart';
//Calculator
import 'package:growing_in_flutter/Calculator/calculator.dart';
//Stream Builder Example
import 'package:growing_in_flutter/StreamBuilderExample/stream_builder_example.dart';
//Bloc Yield Async Streams
import 'package:growing_in_flutter/BlocYieldAsyncStreams/bloc_yield_async_streams.dart';
//Login Page Bloc Pattern
import 'package:growing_in_flutter/LoginPageBlocPattern/login_page_bloc_pattern.dart';
//Login Bloc
import 'package:growing_in_flutter/LoginBloc/login_bloc.dart';
//Weather Bloc
import 'package:growing_in_flutter/WeatherBloc/weather_bloc.dart';
//Login Flare 2D UI
import 'package:growing_in_flutter/LoginFlare2DUI/login_flare_2d_ui.dart';
//Pet UI
import 'package:growing_in_flutter/PetUI/pet_ui.dart';
//Flappy Bird
import 'package:growing_in_flutter/FlappyBird/flappy_bird.dart';
//The Basics Web
import 'package:growing_in_flutter/TheBasicsWeb/the_basics_web.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Flutter Demo Bloc
import 'package:growing_in_flutter/FlutterDemoBloc/flutter_demo_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  int numberApp = 23;
  // Tic Tac Toe
  if(numberApp == 12){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  if(numberApp == 23){
    setupLocator();
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
    } else if (widget.numberApp == 13) {
      materialApp = AnimatedRouteTransitions();
    } else if (widget.numberApp == 14) {
      materialApp = Calculator();
    } else if (widget.numberApp == 15) {
      materialApp = StreamBuilderExample();
    } else if (widget.numberApp == 16) {
      materialApp = BlocYieldAsyncStreams();
    } else if (widget.numberApp == 17) {
      materialApp = LoginPageBlocPattern();
    } else if (widget.numberApp == 18) {
      materialApp = LoginBloc();
    } else if (widget.numberApp == 19) {
      materialApp = WeatherBloc();
    } else if (widget.numberApp == 20) {
      materialApp = LoginFlare2DUI();
    } else if (widget.numberApp == 21) {
      materialApp = PetUI();
    } else if (widget.numberApp == 22) {
      materialApp = FlappyBird();
    } else if (widget.numberApp == 23) {
      materialApp = TheBasicsWeb();
    } else if (widget.numberApp == 24) {
      materialApp = FlutterDemoBloc();
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