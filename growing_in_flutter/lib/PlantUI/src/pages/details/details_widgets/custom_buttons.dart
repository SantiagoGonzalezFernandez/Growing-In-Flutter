//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/PlantUI/src/constants.dart';

class CustomButtons extends StatelessWidget {

  const CustomButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84.0,
          child: FlatButton(
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0
              ),
            ),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0)
              )
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: size.width / 2,
          height: 84.0,
          child: FlatButton(
            child: Text(
              'Description',
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0)
              )
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}