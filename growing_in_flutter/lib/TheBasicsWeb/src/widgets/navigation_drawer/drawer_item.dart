//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar_item.dart';

//Imports that are mine

class DrawerItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final String navigationPath;

  DrawerItem({
    Key key, 
    @required this.title, 
    @required this.icon,
    @required this.navigationPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 60.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30.0),
          NavigationBarItem(title: title, navigationPath: navigationPath)
        ],
      ),
    );
  }
}