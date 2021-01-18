//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';
//Pages
import 'package:growing_in_flutter/TheBasicsWeb/src/pages/home_page.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/pages/about_page.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/pages/episodes_page.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage());      
    case AboutRoute:
      return _getPageRoute(AboutPage());      
    case EpisodesRoute:
      return _getPageRoute(EpisodesPage());      
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({
    this.child
  }) : super(
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) => child,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child
    ) => FadeTransition(
      opacity: animation,
      child: child,
    )
  );

}