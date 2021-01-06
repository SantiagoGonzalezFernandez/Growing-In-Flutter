//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

//Imports that are mine
//Local Widgets
import 'header_with_search_box.dart';
import 'title_with_more_button.dart';
import 'recomend_plants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recomended',
            onPressed: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreButton(
            title: 'Featured Plants', 
            onPressed: () {}
          ),
          FeaturedPlants(),
          SizedBox(height: defaultPadding)
        ],
      ),
    );
  }
}





