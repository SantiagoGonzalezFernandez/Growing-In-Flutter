//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar_logo.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar_item/navigation_bar_item.dart';
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';

class NavigationBarTabletDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationBarItem(
                title: 'Episodes', 
                navigationPath: EpisodesRoute,
              ),
              SizedBox(width: 60.0),
              NavigationBarItem(
                title: 'About', 
                navigationPath: AboutRoute,
              ),
            ],
          )
        ],
      ),
    );
  }
}