//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Configuration
import 'package:growing_in_flutter/PetUI/src/configuration.dart';

class DetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios), 
                    onPressed: (){
                      Navigator.pop(context);
                    }
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      
                    },
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                child: Image.asset('PetUI/assets/images/pet-cat2.png')
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120.0,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )
              ),
              child: Row(
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      height: 60.0,
                      child: Center(
                        child: Text(
                          'Adoption',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}