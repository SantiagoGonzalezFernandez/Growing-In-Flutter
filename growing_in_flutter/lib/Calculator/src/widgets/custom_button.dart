//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class CustomButton extends StatelessWidget {

  final Color color;
  final Color textColor;
  final String buttonText;
  final Function onTap;

  CustomButton({
    Key key, 
    @required this.color, 
    @required this.textColor, 
    @required this.buttonText,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.0
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}