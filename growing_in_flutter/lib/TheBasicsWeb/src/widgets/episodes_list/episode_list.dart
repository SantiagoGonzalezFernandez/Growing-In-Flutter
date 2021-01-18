//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/episode_item_model.dart';
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/episodes_list/episode_item.dart';

class EpisodeList extends StatelessWidget {
  
  final List<EpisodeItemModel> episodes;

  EpisodeList({
    Key key,
    this.episodes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30.0,
      runSpacing: 30.0,
      children: [
        ...episodes.map((episode) => EpisodeItem(model: episode))
      ],
    );
  }
}