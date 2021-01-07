//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:growing_in_flutter/MeditateUI/src/constants.dart';
import 'package:growing_in_flutter/MeditateUI/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:growing_in_flutter/MeditateUI/src/widgets/custom_search_bar.dart';

//Imports that are mine

class DetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: blueLightColor,
              image: DecorationImage(
                image: AssetImage('MeditateUI/assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth
              )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Text(
                        'Live happier and healthier by learning the founsamenrals of meditation and mindfulness'
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: CustomSearchBar()
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        SeassionCard(
                          seassionNumber: 1,
                          onTap: () {},
                          isDone: true,
                        ),
                        SeassionCard(
                          seassionNumber: 2,
                          onTap: () {},
                        ),
                        SeassionCard(
                          seassionNumber: 3,
                          onTap: () {},
                        ),
                        SeassionCard(
                          seassionNumber: 4,
                          onTap: () {},
                        ),
                        SeassionCard(
                          seassionNumber: 5,
                          onTap: () {},
                        ),
                        SeassionCard(
                          seassionNumber: 6,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      padding: EdgeInsets.all(10.0),
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 17.0),
                            blurRadius: 23.0,
                            spreadRadius: -13.0,
                            color: shadowColor
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('MeditateUI/assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                  'Start your deepen you practice'
                                )
                              ],
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('MeditateUI/assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class SeassionCard extends StatelessWidget {

  final int seassionNumber;
  final bool isDone;
  final Function onTap;
  
  const SeassionCard({
    Key key,
    @required this.seassionNumber,
    @required this.onTap,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constraint.maxWidth / 2 - 10.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 17.0),
                  blurRadius: 23.0,
                  spreadRadius: -13.0,
                  color: shadowColor
                )
              ]
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 42.0,
                        width: 43.0,
                        decoration: BoxDecoration(
                          color: isDone ? blueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blueColor
                          )
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : blueColor,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Session $seassionNumber',
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}