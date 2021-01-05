//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {

  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultPadding * 2.5
      ),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              bottom: 36 + defaultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )
            ),
            child: Row(
              children: [
                Text(
                  'Hi Uishopy!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Image.asset('PlantUI/assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10.0),
                    blurRadius: 50.0,
                    color: primaryColor.withOpacity(0.23)
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SvgPicture.asset('PlantUI/assets/icons/search.svg')
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}