//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/AnimatedLoginUI/src/pages/home_page.dart';
//Blocs
import 'package:growing_in_flutter/AnimatedLoginUI/src/blocs/home_changer_bloc.dart';

class AnimatedLoginUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeChangerBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Animated Login UI',
        home: HomePage(),
      ),
    );
  }
}