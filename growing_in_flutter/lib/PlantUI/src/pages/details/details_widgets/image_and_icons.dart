//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Local Widget
import 'icon_card.dart';
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class ImageAndIcons extends StatelessWidget {
  ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        bottom: defaultPadding * 1.5
      ),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: defaultPadding * 3
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: SvgPicture.asset('PlantUI/assets/icons/back_arrow.svg'),
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: 'PlantUI/assets/icons/sun.svg'),
                    IconCard(icon: 'PlantUI/assets/icons/icon_2.svg'),
                    IconCard(icon: 'PlantUI/assets/icons/icon_3.svg'),
                    IconCard(icon: 'PlantUI/assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('PlantUI/assets/images/img.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 60.0,
                    color: primaryColor.withOpacity(0.29)
                  )
                ] 
              ),
            )
          ],
        ),
      ),
    );
  }
}