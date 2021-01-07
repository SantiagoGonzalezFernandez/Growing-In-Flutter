//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/AnimatedLoginUI/src/constants.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final bool hasBorder;

  CustomButton({
    Key key, 
    this.title, 
    this.hasBorder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Constants.white : Constants.mediumBlue,
          borderRadius: BorderRadius.circular(10.0),
          border: hasBorder ? Border.all(
            color: Constants.mediumBlue,
            width: 1.0
          ) : Border.fromBorderSide(BorderSide.none)
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? Constants.mediumBlue : Constants.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}