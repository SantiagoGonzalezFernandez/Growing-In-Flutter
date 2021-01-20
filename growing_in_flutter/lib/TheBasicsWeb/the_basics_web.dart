//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Views
import 'package:growing_in_flutter/TheBasicsWeb/src/views/layout_template/layout_template.dart';
//Locator
import 'package:growing_in_flutter/TheBasicsWeb/src/locator.dart';
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';
//Routing
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/router.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/routing/route_names.dart';

class TheBasicsWeb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Basics Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        )
      ),
      builder: (context, child) => LayoutTemplate(child: child),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,            
    );
  }
}