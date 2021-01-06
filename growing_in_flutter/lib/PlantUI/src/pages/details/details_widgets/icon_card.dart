//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class IconCard extends StatelessWidget {

  final String icon;

  const IconCard({
    Key key,
    @required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03
      ),
      padding: EdgeInsets.all(defaultPadding / 2.0),
      height: 62.0,
      width: 62.0,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 15.0),
            blurRadius: 22.0,
            color: primaryColor.withOpacity(0.22)
          ),
          BoxShadow(
            offset: Offset(-15.0, -15.0),
            blurRadius: 20.0,
            color: Colors.white
          )
        ] 
      ),
      child: SvgPicture.asset(icon),
    );
  }
}