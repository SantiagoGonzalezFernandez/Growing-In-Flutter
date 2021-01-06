//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Local Widgets
import 'custom_buttons.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          SizedBox(height: defaultPadding),
          CustomButtons(),
        ],
      ),
    );
  }
}