//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//DataModels
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/episode_item_model.dart';
//ViewModels
import 'package:growing_in_flutter/TheBasicsWeb/src/viewmodels/episode_list_view_model.dart';
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/episodes_list/episode_item.dart';
import 'package:provider_architecture/provider_architecture.dart';

class EpisodeList extends StatelessWidget {
  
  final List<EpisodeItemModel> episodes;

  EpisodeList({
    Key key,
    this.episodes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeListViewModel>.withConsumer(
      viewModelBuilder: () => EpisodeListViewModel(),
      builder: (context, model, child) =>  Wrap(
        spacing: 30.0,
        runSpacing: 30.0,
        children: [
          ...episodes.asMap().map((index, episode) => MapEntry(
            index, 
            GestureDetector(
              child: EpisodeItem(model: episode),
              onTap: () => model.navigateToEpisode(index),
            )
          )).values.toList()
        ],
      ),
    );
  }
}