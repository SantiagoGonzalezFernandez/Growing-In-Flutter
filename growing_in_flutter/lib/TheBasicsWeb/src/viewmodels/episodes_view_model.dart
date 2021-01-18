//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/episode_item_model.dart';
//Locator
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/api.dart';

class EpisodeViewModel extends ChangeNotifier {

  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodesResult = await _api.getEpisodes();

    if(episodesResult is String) {
      //Show error
    } else {
      _episodes = episodesResult;
    }

    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}