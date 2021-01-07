//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/MeditateUI/src/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0
      ),
      height: 80.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonNavigationItem(
            svgSrc: 'MeditateUI/assets/icons/calendar.svg',
            title: 'Today',
            onTap: () {},
          ),
          CustomButtonNavigationItem(
            svgSrc: 'MeditateUI/assets/icons/gym.svg',
            title: 'All Exercises',
            onTap: () {},
            isActive: true,
          ),
          CustomButtonNavigationItem(
            svgSrc: 'MeditateUI/assets/icons/Settings.svg',
            title: 'Settings',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CustomButtonNavigationItem extends StatelessWidget {

  final String svgSrc;
  final String title;
  final Function onTap;
  final bool isActive;

  CustomButtonNavigationItem({
    Key key, 
    @required this.svgSrc, 
    @required this.title, 
    @required this.onTap, 
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgSrc,
            color: isActive ? activeIconColor : textColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? activeIconColor : textColor
            ),
          )
        ],
      ),
    );
  }
}