//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Local Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

