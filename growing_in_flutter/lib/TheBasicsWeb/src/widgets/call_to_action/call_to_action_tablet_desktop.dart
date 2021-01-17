//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/TheBasicsWeb/src/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {

  final String title;

  CallToActionTabletDesktop({
    Key key, 
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 60.0,
        vertical: 15.0
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5.0)
      ),
    );
  }
}