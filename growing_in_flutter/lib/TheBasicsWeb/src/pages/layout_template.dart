//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/centered_view.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_drawer/navigation_drawer.dart';
//Locators
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/router.dart';

class LayoutTemplate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>  Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}