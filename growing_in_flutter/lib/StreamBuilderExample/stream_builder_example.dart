//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/StreamBuilderExample/src/pages/home_page.dart';

class StreamBuilderExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stream Builder Example',
      home: HomePage(),
    );
  }
}