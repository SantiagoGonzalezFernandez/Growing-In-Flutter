//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/BlocYieldAsyncStreams/src/pages/home_page.dart';

class BlocYieldAsyncStreams extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Yield Async Streams',
      home: HomePage(),
    );
  }
}