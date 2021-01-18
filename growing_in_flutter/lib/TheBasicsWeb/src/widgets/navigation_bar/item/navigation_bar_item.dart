//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Locators
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';
//Models
import 'package:growing_in_flutter/TheBasicsWeb/src/models/navigation_bar_item_model.dart';
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/item/navigation_bar_item_mobile.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/item/navigation_bar_item_tablet_desktop.dart';

class NavigationBarItem extends StatelessWidget {

  final String title;
  final String navigationPath;
  final IconData icon;

  NavigationBarItem({
    Key key, 
    @required this.title,
    @required this.navigationPath,
    @required this.icon,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    var model = NavigationBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          mobile: NavigationBarItemMobile(),  
          tablet: NavigationBarItemTabletDesktop(),  
        ),
      )
    );
  }
}