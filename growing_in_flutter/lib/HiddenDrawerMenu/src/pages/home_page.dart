//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

//Imports that are mine
//Pages
import 'first_page.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Page 1',
          baseStyle: TextStyle(
            color: Colors.white.withOpacity(0.8), 
            fontSize: 28.0
          ),
          colorLineSelected: Colors.teal,
        ),
        FirstPage()
      )
    );

    items.add(
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Page 2',
          baseStyle: TextStyle(
            color: Colors.white.withOpacity(0.8), 
            fontSize: 28.0 
          ),
          colorLineSelected: Colors.orange,
        ),
        SecondPage()
      )
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      isTitleCentered: true,
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    disableAppBarDefault: false,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
          slidePercent: 40.0,
          verticalScalePercent: 90.0,
          contentCornerRadius: 40.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}