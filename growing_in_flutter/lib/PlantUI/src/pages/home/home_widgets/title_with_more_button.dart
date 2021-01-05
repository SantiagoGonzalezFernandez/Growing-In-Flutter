//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class TitleWithMoreButton extends StatelessWidget {

  final String title;
  final Function onPressed;

  const TitleWithMoreButton({
    Key key,
    @required this.title,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding
      ),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {

  final String text;

  const TitleWithCustomUnderline({
    Key key,
    @required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultPadding / 4
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              margin: EdgeInsets.only(
                right: defaultPadding / 4
              ),
              height: 7.0,
              color: primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}