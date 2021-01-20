//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/season_details.dart/season_details_mobile.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/season_details.dart/season_details_tablet_desktop.dart';
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/season_details_model.dart';

class SeasonDetails extends StatelessWidget {

  final SeasonDetailsModel details;

  const SeasonDetails({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        mobile: SeasonDetailsMobile(),
        desktop: SeasonDetailsTabletDesktop(),
      ),
    );
  }
}