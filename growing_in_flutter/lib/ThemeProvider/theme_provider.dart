//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/ThemeProvider/src/pages/home_page.dart';
//Blocs
import 'package:growing_in_flutter/ThemeProvider/src/blocs/theme_changer_bloc.dart';

class ThemeProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => ThemeChangerBloc(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChangerBloc>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThemeProvider',
      theme: theme.getTheme(),
      home: HomePage(),
    );
  }
}