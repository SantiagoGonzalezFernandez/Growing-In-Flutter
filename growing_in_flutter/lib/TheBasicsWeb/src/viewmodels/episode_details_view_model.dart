//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Locator
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/episode_item_model.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/api.dart';


class EpisodeDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  EpisodeItemModel _episode;

  EpisodeItemModel get episode => _episode;

  Future getEpisodeData(int id) async {
    var response = await _api.getEpisode(id);

    if (response is String) {
      _episode = EpisodeItemModel(title: response);
    } else {
      _episode = response;
    }

    notifyListeners();
  }
}
