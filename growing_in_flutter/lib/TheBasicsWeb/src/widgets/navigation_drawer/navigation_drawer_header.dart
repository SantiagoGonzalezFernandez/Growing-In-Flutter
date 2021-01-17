//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/TheBasicsWeb/src/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'SKILL UP NOW',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}