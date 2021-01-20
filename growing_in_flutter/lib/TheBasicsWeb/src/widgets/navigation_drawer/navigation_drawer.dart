//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar_item/navigation_bar_item.dart';
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';

class NavigationDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16.0
          )
        ]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          NavigationBarItem(title: 'Episodes', icon: Icons.videocam, navigationPath: EpisodesRoute),
          NavigationBarItem(title: 'About', icon: Icons.help, navigationPath: AboutRoute),
        ],
      ),
    );
  }
}