//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar_logo.dart';

class NavigationBarMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavigationBarLogo()
        ],
      ),
    );
  }
}