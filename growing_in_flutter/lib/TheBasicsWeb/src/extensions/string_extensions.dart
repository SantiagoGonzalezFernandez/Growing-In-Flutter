//Imports that are not mine

//Imports that are mine
//DataModels
import 'package:growing_in_flutter/TheBasicsWeb/src/datamodels/routing_data.dart';

extension StringExtensions on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);
    return RoutingData(
      queryParametres: uriData.queryParameters,
      route: uriData.path
    );
  }
}