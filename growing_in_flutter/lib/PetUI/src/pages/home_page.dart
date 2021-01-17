//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Configuration
import 'package:growing_in_flutter/PetUI/src/configuration.dart';
import 'package:growing_in_flutter/PetUI/src/pages/details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(
        xOffset, yOffset, 0
      )..scale(scaleFactor)..rotateY(isDrawerOpen ? -0.5 : 0.0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular( isDrawerOpen ? 40.0 : 0)
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen ? IconButton(
                      icon: Icon(Icons.arrow_back_ios), 
                      onPressed: (){
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      }
                    ) : IconButton(
                      icon: Icon(Icons.menu), 
                      onPressed: (){
                        setState(() {
                          xOffset = 230.0;
                          yOffset = 150.0;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
                        });
                      }
                    ),
                    Column(
                      children: [
                        Text(
                          'Location',
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryGreen,
                            ),
                            Text(
                              'Ukraine'
                            ),
                          ],
                        )
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text(
                      'Search pet to adopt'
                    ),
                    Icon(Icons.settings)
                  ],
                ),
              ),
              Container(
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50.0,
                            width: 50.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          categories[index]['name'],
                        )
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(),
                    )
                  );
                },
                child: Container(
                  height: 240.0,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: shadowList
                              ),
                              margin: EdgeInsets.only(top: 50.0),
                            ),
                            Align(
                              child: Hero(
                                tag: 1,
                                child: Image.asset('PetUI/assets/images/pet-cat2.png')
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 60.0,
                            bottom: 20.0
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 240.0,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: shadowList
                            ),
                            margin: EdgeInsets.only(top: 50.0),
                          ),
                          Align(
                            child: Image.asset('PetUI/assets/images/pet-cat1.png'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 60.0,
                          bottom: 20.0
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}