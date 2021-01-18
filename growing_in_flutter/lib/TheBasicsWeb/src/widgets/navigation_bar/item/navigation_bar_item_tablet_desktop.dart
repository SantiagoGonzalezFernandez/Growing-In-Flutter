//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/navigation_bar_item_model.dart';

class NavigationBarItemTabletDesktop extends ProviderWidget<NavigationBarItemModel> {
  @override
  Widget build(BuildContext context, NavigationBarItemModel model) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18.0),
    );
  }
}