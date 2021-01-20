//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Locator
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';
//Extensions
import 'package:growing_in_flutter/TheBasicsWeb/src/extensions/hover_extensions.dart';

class NavigationBarLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: SizedBox(
        height: 80.0,
        width: 150.0,
        child: Image.asset('TheBasicsWeb/assets/images/logo.png'),
      ),
    ).moveUpOnHover;
  }
}