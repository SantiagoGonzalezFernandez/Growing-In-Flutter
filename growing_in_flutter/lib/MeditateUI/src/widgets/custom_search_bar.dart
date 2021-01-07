//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5.0
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          icon: SvgPicture.asset('MeditateUI/assets/icons/search.svg'),
          border: InputBorder.none
        ),
      ),
    );
  }
}