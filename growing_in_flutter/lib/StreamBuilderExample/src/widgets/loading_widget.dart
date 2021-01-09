//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class LoadingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Esperando clicks'),
        SizedBox(height: 20.0),
        CircularProgressIndicator()
      ],
    );
  }
}