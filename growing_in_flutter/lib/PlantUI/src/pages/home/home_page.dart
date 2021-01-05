//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
//Global Widgets
import 'package:growing_in_flutter/PlantUI/src/widgets/custom_bottom_navigation_bar.dart';
//Local Widgets
import 'package:growing_in_flutter/PlantUI/src/pages/home/home_widgets/body.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('PlantUI/assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}

