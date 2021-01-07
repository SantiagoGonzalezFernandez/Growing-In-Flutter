//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/MeditateUI/src/widgets/category_card.dart';
import 'package:growing_in_flutter/MeditateUI/src/widgets/custom_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                image: AssetImage('MeditateUI/assets/images/undraw_pilates_gpdb.png'),
                alignment: Alignment.centerLeft
              )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.0,
                      width: 52.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset('MeditateUI/assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning \nSantiago',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30.0),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 5.0
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        icon: SvgPicture.asset('MeditateUI/assets/icons/search.svg'),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        CategoryCard(
                          title: 'Diet Recommendation',
                          svgSrc: 'MeditateUI/assets/icons/Hamburger.svg',
                          onTap: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'MeditateUI/assets/icons/Excrecises.svg',
                          title: 'Kegel Exercises',
                          onTap: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'MeditateUI/assets/icons/Meditation.svg',
                          title: 'Meditation',
                          onTap: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'MeditateUI/assets/icons/yoga.svg',
                          title: 'Yoga',
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}