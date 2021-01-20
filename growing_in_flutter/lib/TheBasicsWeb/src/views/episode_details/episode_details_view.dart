//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

//Imports that are mine
import 'package:growing_in_flutter/TheBasicsWeb/src/viewmodels/episode_details_view_model.dart';

class EpisodeDetails extends StatelessWidget {

  final int id;
  EpisodeDetails({
    Key key, 
    this.id
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeDetailsViewModel>.withConsumer(
      viewModelBuilder: () => EpisodeDetailsViewModel(),
      onModelReady: (model) => model.getEpisodeData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: <Widget>[
            model.episode == null ? Container() : SizedBox(
              height: 320,
              child: Image.network(
                model.episode.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            model.episode == null ? CircularProgressIndicator() : Text(
              model.episode.title,
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}
