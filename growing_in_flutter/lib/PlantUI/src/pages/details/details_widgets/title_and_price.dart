//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class TitleAndPrice extends StatelessWidget {

  final String title;
  final String country;
  final int price;

  const TitleAndPrice({
    Key key,
    @required this.title,
    @required this.country,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                  text: '$country',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: primaryColor,
                    fontWeight: FontWeight.w300
                  )
                )
              ]
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5.copyWith(
              color: primaryColor
            ),
          )
        ],
      ),
    );
  }
}