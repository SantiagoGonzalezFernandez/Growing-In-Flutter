//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/navigation_bar/navigation_bar.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/centered_view.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/home_content/home_content_desktop.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/home_content/home_content_mobile.dart';

class HomePage extends StatelessWidget {

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
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}