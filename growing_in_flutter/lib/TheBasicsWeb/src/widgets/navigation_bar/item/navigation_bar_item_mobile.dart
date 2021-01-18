//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/navigation_bar_item_model.dart';

class NavigationBarItemMobile extends ProviderWidget<NavigationBarItemModel> {
  @override
  Widget build(BuildContext context, NavigationBarItemModel model) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 60.0),
      child: Row(
        children: [
          Icon(model.iconData),
          SizedBox(width: 30.0),
          Text(
            model.title,
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}