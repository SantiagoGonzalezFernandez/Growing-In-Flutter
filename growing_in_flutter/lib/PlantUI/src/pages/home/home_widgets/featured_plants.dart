//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturePlantCard(
            image: 'PlantUI/assets/images/bottom_img_1.png',
            onPressed: () {},
          ),
          FeaturePlantCard(
            image: 'PlantUI/assets/images/bottom_img_2.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {

  final String image;
  final Function onPressed;

  const FeaturePlantCard({
    Key key,
    @required this.image,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          ),
        ),
      ),
    );
  }
}