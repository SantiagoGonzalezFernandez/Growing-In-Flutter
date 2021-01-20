//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//DataModels
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/episode_item_model.dart';
//Extensions
import 'package:growing_in_flutter/TheBasicsWeb/src/extensions/hover_extensions.dart';

class EpisodeItem extends StatelessWidget {

  final EpisodeItemModel model;

  const EpisodeItem({
    Key key, 
    this.model
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      child: SizedBox(
        width: 360.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180.0,
              child: Image.network(
                model.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.duration} minutes',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ).showCursorOnHover;
  }
}