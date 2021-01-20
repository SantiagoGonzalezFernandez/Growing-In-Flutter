//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Views
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}