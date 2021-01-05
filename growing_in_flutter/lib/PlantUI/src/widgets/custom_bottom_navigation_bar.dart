//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: defaultPadding * 2.0,
        right: defaultPadding * 2.0,
        bottom: defaultPadding
      ),
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, -10.0),
            blurRadius: 35.0,
            color: primaryColor.withOpacity(0.38)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('PlantUI/assets/icons/flower.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('PlantUI/assets/icons/heart-icon.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('PlantUI/assets/icons/user-icon.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}