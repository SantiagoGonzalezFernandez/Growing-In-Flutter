//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/ThemeProvider/src/blocs/theme_changer_bloc.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChangerBloc>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'AppBar'
        ),
      ),
      body: ButtonsList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => theme.setTheme(ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lime,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lime
          )
        )),
      ),
    );
  }
}

class ButtonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChangerBloc>(context);

    return Column(
      children: [
        FlatButton(
          child: Text('Light'),
          onPressed: () => theme.setTheme(ThemeData.light()), 
        ),
        FlatButton(
          child: Text('Dark'),
          onPressed: () => theme.setTheme(ThemeData.dark()),
        ),
      ],
    );
  }
}