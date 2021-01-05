//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'PlantUI/assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPressed: () {},
          ),
          RecomendPlantCard(
            image: 'PlantUI/assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            onPressed: () {},
          ),
          RecomendPlantCard(
            image: 'PlantUI/assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {

  final String image;
  final String title;
  final String country;

  final int price;

  final Function onPressed;

  const RecomendPlantCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.price,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 50.0,
                    color: primaryColor.withOpacity(0.23)
                  )
                ]
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: primaryColor.withOpacity(0.5)
                          )
                        )
                      ]
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}