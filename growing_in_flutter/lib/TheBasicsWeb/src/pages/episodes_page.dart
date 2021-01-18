//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/season_details.dart/season_details.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/episodes_list/episode_list.dart';
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/season_details_model.dart';
//Viewmodels
import 'package:growing_in_flutter/TheBasicsWeb/src/viewmodels/episodes_view_model.dart';

class EpisodesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeViewModel>.withConsumer(
      viewModelBuilder: () => EpisodeViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) =>  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 100.0),
            SeasonDetails(
              details: SeasonDetailsModel(
                title: 'SEASON 1',
                description: 'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.'
              ),
            ),
            SizedBox(height: 50.0),
            model.episodes != null ? EpisodeList(
              episodes: model.episodes
            ) : CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}