//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/MeditateUI/src/constants.dart';

class CategoryCard extends StatelessWidget {

  final String svgSrc;
  final String title;
  final Function onTap;

  const CategoryCard({
    Key key,
    @required this.svgSrc,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 17.0),
              blurRadius: 17.0,
              spreadRadius: -23,
              color: shadowColor
            )
          ]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 15.0
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}