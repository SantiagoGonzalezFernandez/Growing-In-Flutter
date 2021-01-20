//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Locator
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';

class EpisodeListViewModel extends ChangeNotifier {

  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _navigationService.navigateTo(
      EpisodeDetailsRoute,
      queryParams: {
        'id' : index.toString()
      }
    );
  }
}
