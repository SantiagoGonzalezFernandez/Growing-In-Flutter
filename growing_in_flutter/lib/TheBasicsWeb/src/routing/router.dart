//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';
//Views
import 'package:growing_in_flutter/TheBasicsWeb/src/views/home/home_view.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/views/about/about_view.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/views/episodes/episodes_view.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/views/episode_details/episode_details_view.dart';
//Extensions
import 'package:growing_in_flutter/TheBasicsWeb/src/extensions/string_extensions.dart';

Route<dynamic> generateRoute(RouteSettings settings){

  var routingData = settings.name.getRoutingData;

  switch (routingData.route) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings);
    case AboutRoute:
      return _getPageRoute(AboutPage(), settings);
    case EpisodesRoute:
      return _getPageRoute(EpisodesPage(), settings);
    case EpisodeDetailsRoute:
      var id = int.tryParse(routingData['id']);
      return _getPageRoute(EpisodeDetails(id: id), settings); 
    default:
      return _getPageRoute(HomePage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(
    child: child,
    routeName: settings.name
  );
}

class _FadeRoute extends PageRouteBuilder {

  final Widget child;
  final String routeName;

  _FadeRoute({
    this.child,
    this.routeName
  }) : super(
    settings: RouteSettings(name: routeName),
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