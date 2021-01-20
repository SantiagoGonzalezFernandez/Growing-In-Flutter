//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/season_details_model.dart';
//Styles
import 'package:growing_in_flutter/TheBasicsWeb/src/styles/text_styles.dart';

class SeasonDetailsMobile extends ProviderWidget<SeasonDetailsModel>{

  @override
  Widget build(BuildContext context, SeasonDetailsModel details) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: [
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(width: 50.0),
          Expanded(
            child: Text(
              details.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}