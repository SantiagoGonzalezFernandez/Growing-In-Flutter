//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';

//Imports that are mine

class NavigationBarItem extends StatelessWidget {

  final String title;
  final String navigationPath;

  NavigationBarItem({
    Key key, 
    @required this.title,
    @required this.navigationPath,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0
        ),
      ),
    );
  }
}